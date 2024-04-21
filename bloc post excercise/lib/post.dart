
class Post{
  final int userId;
  final String title;
  final String description;
  final int id;
 
  Post({required this.userId, required this.title, required this.description, required this.id});

factory Post.fromJson(Map<String, dynamic> json) => Post(
    userId: json['userId'],
    id: json['id'],
    title: json['title'],
    description: json['body'],
    );
}


