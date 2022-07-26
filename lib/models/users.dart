import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String profilePicUrl;
  String username;
  String email;
  String bio;
  String uid;
  List followers;
  List following;
  UserModel(
      {required this.profilePicUrl,
      required this.username,
      required this.email,
      required this.bio,
      required this.uid,
      required this.followers,
      required this.following});

  Map<String, dynamic> toJson() => {
        'profile-pic-url': profilePicUrl,
        'username': username,
        'email': email,
        'bio': bio,
        'uid': uid,
        'followers': followers,
        'following': following,
      };
  static UserModel fromSnap(DocumentSnapshot snap) {
    return UserModel(
      profilePicUrl: snap['profile-pic-url'],
      username: snap['username'],
      email: snap['email'],
      bio: snap['bio'],
      uid: snap['uid'],
      followers: snap['followers'],
      following: snap['following'],
    );
  }
}
