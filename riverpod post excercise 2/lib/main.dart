import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'post.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'http package',
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.amber,
      ),
      home: const HomeWidget(),
    );
  }
}

final postProvider = FutureProvider<List<Post>>((ref) async {
  final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  final response = await http.get(uri);

  if (response.statusCode == 200) {
    final List<dynamic> responseBody = json.decode(response.body);
    final posts =
        responseBody.map((postJson) => Post.fromJson(postJson)).toList();
    return posts;
  } else {
    throw Exception('Failed to load posts');
  }
});

class HomeWidget extends ConsumerWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'HTTP package',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                ref.refresh(postProvider);
              },
              child: const Text(
                'Get',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Consumer(builder: (context, ref, child) {
              final postsAsyncValue = ref.watch(postProvider);
              return postsAsyncValue.when(
                data: (postList) {
                  if (postList.isEmpty) {
                    return const Center(
                      child: Text('No posts available'),
                    );
                  } else {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: postList.length,
                        itemBuilder: (context, index) {
                          final post = postList[index];
                          return buildDataWidget(context, post);
                        },
                      ),
                    );
                  }
                },
                loading: () =>
                    const Center(child: CircularProgressIndicator()),
                error: (error, stackTrace) =>
                    Center(child: Text('Error: $error')),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget buildDataWidget(BuildContext context, Post post) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white),
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.title, style: const TextStyle(color: Colors.blue)),
            const Divider(color: Colors.blue),
            const SizedBox(height: 10),
            Text(post.description,
                style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
