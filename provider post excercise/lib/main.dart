import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:provider_posts_exercise/post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PostProvider(),
      child: MaterialApp(
        title: 'http package',
        theme: ThemeData(
          primaryColor: Colors.blue,
          primarySwatch: Colors.amber,
        ),
        home: const HomeWidget(),
      ),
    );
  }
}

class PostProvider extends ChangeNotifier {
  List<Post>? posts;

  Future<void> getPost() async {
    final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<dynamic> responseBody = json.decode(response.body);
      posts = responseBody.map((postJson) => Post.fromJson(postJson)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
    notifyListeners();
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text('HTTP package', style: TextStyle(color: Colors.white),),
        ),
      ),
      body: Consumer<PostProvider>(
        builder: (context, postProvider, _) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                    ),
                    onPressed: () => postProvider.getPost(),
                    child: const Text('Get', style: TextStyle(color: Colors.white
                    ),),
                  ),
                ),
                if (postProvider.posts != null && postProvider.posts!.isNotEmpty)
                  Expanded(
                    child: ListView.builder(
                      itemCount: postProvider.posts!.length,
                      itemBuilder: (context, index) {
                        final post = postProvider.posts![index];
                        return buildDataWidget(context, post);
                      },
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildDataWidget(BuildContext context, Post post) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
      ),
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.title, style: const TextStyle(color: Colors.blue)),
            const Divider(color: Colors.blue,),
            const SizedBox(height: 10),
            Text(post.description, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
