// Define a class for the post
import 'package:flutter/cupertino.dart';
import 'package:literature_app_admin/Core/constant/assets.dart';

class Post {
  final String name;
  final String time;

  final String title;
  final String description;
  final String imageUrl;
  final String? email;
  final String? phone;
  final int likes;
  final int dislikes;
  final int? rank;
  final List? reports;
  final String? device;

  Post({
    this.rank,
    this.phone,
    this.device,
    this.email,
    this.reports,
    required this.name,
    required this.likes,
    required this.dislikes,
    required this.time,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

List<Post> posts = [
  Post(
    name: 'John Doe',
    time: '10:00 AM',
    title: 'First Post',
    phone: '+923034659647',
    email: 'emaildummy@gmail.com',
    description: loremipsum,
    imageUrl: profil2,
    device: apple,
    reports: [2, 3],
    likes: 3,
    rank: 1,
    dislikes: 5,
  ),
  Post(
    name: 'Jane Smith',
    time: '11:00 AM',
    phone: '+923034659647',
    reports: [],
    email: 'emaildummy@gmail.com',
    title: 'Second Post',
    device: apple,
    rank: 2,
    description: loremipsum,
    imageUrl: profil2,
    likes: 2,
    dislikes: 1,
  ),
  Post(
    name: 'Alice Johnson',
    time: '12:00 PM',
    phone: '+923034659647',
    title: 'Third Post',
    device: google,
    email: 'emaildummy@gmail.com',
    description: loremipsum,
    reports: [4, 3, 4],
    imageUrl: profil2,
    likes: 5,
    rank: 3,
    dislikes: 23,
  ),
  Post(
    name: 'Jane Smith',
    phone: '+923034659647',
    time: '11:00 AM',
    email: 'emaildummy@gmail.com',
    title: 'Second Post',
    description: loremipsum,
    reports: [],
    device: google,
    imageUrl: profil2,
    rank: 4,
    likes: 2,
    dislikes: 1,
  ),
  Post(
    name: 'Alice Johnson',
    time: '12:00 PM',
    title: 'Third Post',
    reports: [],
    phone: '+923034659647',
    description: loremipsum,
    email: 'emaildummy@gmail.com',
    device: apple,
    rank: 5,
    imageUrl: profil2,
    likes: 5,
    dislikes: 23,
  ),
  Post(
    name: 'Jane Smith',
    time: '11:00 AM',
    title: 'Second Post',
    email: 'emaildummy@gmail.com',
    phone: '+923034659647',
    description: loremipsum,
    device: apple,
    reports: [],
    imageUrl: profil2,
    rank: 6,
    likes: 2,
    dislikes: 1,
  ),
  Post(
    name: 'Alice Johnson',
    time: '12:00 PM',
    title: 'Third Post',
    phone: '+923034659647',
    device: google,
    reports: [3, 4, 5, 6],
    description: loremipsum,
    imageUrl: profil2,
    email: 'emaildummy@gmail.com',
    rank: 8,
    likes: 5,
    dislikes: 23,
  ),
];

class PostItems with ChangeNotifier {
  final List<Post> _posts = [
    Post(
      name: 'John Doe',
      time: '10:00 AM',
      title: 'First Post',
      phone: '+923034659647',
      email: 'emaildummy@gmail.com',
      description: loremipsum,
      imageUrl: profil2,
      device: apple,
      reports: [2, 3],
      likes: 3,
      rank: 1,
      dislikes: 5,
    ),
    Post(
      name: 'Jane Smith',
      time: '11:00 AM',
      phone: '+923034659647',
      reports: [],
      email: 'emaildummy@gmail.com',
      title: 'Second Post',
      device: apple,
      rank: 2,
      description: loremipsum,
      imageUrl: profil2,
      likes: 2,
      dislikes: 1,
    ),
    Post(
      name: 'Alice Johnson',
      time: '12:00 PM',
      phone: '+923034659647',
      title: 'Third Post',
      device: google,
      email: 'emaildummy@gmail.com',
      description: loremipsum,
      reports: [4, 3, 4],
      imageUrl: profil2,
      likes: 5,
      rank: 3,
      dislikes: 23,
    ),
    Post(
      name: 'Jane Smith',
      phone: '+923034659647',
      time: '11:00 AM',
      email: 'emaildummy@gmail.com',
      title: 'Second Post',
      description: loremipsum,
      reports: [],
      device: google,
      imageUrl: profil2,
      rank: 4,
      likes: 2,
      dislikes: 1,
    ),
    Post(
      name: 'Alice Johnson',
      time: '12:00 PM',
      title: 'Third Post',
      reports: [],
      phone: '+923034659647',
      description: loremipsum,
      email: 'emaildummy@gmail.com',
      device: apple,
      rank: 5,
      imageUrl: profil2,
      likes: 5,
      dislikes: 23,
    ),
    Post(
      name: 'Jane Smith',
      time: '11:00 AM',
      title: 'Second Post',
      email: 'emaildummy@gmail.com',
      phone: '+923034659647',
      description: loremipsum,
      device: apple,
      reports: [],
      imageUrl: profil2,
      rank: 6,
      likes: 2,
      dislikes: 1,
    ),
    Post(
      name: 'Alice Johnson',
      time: '12:00 PM',
      title: 'Third Post',
      phone: '+923034659647',
      device: google,
      reports: [3, 4, 5, 6],
      description: loremipsum,
      imageUrl: profil2,
      email: 'emaildummy@gmail.com',
      rank: 8,
      likes: 5,
      dislikes: 23,
    ),
  ];

  int _userIndex = 0;

  int get userIndex => _userIndex;

  void setUserIndex(int index) {
    _userIndex = index;
    notifyListeners();
  }

  List<Post> get posts => _posts;

  void addItem(Post post) {
    _posts.add(post);
    notifyListeners();
  }
}
