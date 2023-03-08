import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test_task_rest/constants/constants.dart';
import 'package:test_task_rest/entities/albums_entity_freezed/albums_entity.dart';
import 'package:test_task_rest/entities/comment_entity_freezed/comment_entity.dart';
import 'package:test_task_rest/entities/comments_entity_freezed/comments_entity.dart';
import 'package:test_task_rest/entities/posts_entity_freezed/posts_entity.dart';
import 'package:test_task_rest/entities/user_entity_freezed.dart/user_entity.dart';

class JsonPlaceHolderApi {
  Future<List<UserEntity>> fetchAllUsersData() async {
    final responce = await http.get(
        Uri.parse(
          Constants.URL + Constants.USERS,
        ),
        headers: {"Content-Type": "application/json"});

    if (responce.statusCode == 200) {
      final List jsonResponse = json.decode(responce.body);

      return jsonResponse.map((user) => UserEntity.fromJson(user)).toList();
    } else {
      throw Exception('Error: ${responce.reasonPhrase}');
    }
  }

  Future<List<PostsEntity>> fetchAllPostsData() async {
    final responce = await http.get(
        Uri.parse(
          Constants.URL + Constants.POSTS,
        ),
        headers: {"Content-Type": "application/json"});

    if (responce.statusCode == 200) {
      final List jsonResponse = json.decode(responce.body);

      return jsonResponse.map((post) => PostsEntity.fromJson(post)).toList();
    } else {
      throw Exception('Error: ${responce.reasonPhrase}');
    }
  }

  Future<List<AlbumsEntity>> fetchAllAlbumsData() async {
    final responce = await http.get(
        Uri.parse(
          Constants.URL + Constants.ALBUMS,
        ),
        headers: {"Content-Type": "application/json"});

    if (responce.statusCode == 200) {
      final List jsonResponse = json.decode(responce.body);

      return jsonResponse.map((post) => AlbumsEntity.fromJson(post)).toList();
    } else {
      throw Exception('Error: ${responce.reasonPhrase}');
    }
  }

  Future<List<CommentsEntity>> fetchAllCommentsOfThePostData(int postid) async {
    final responce = await http.get(
        Uri.parse(
          Constants.URL + Constants.POSTS + '/$postid' + Constants.COMMENTS,
        ),
        headers: {"Content-Type": "application/json"});

    if (responce.statusCode == 200) {
      final List jsonResponse = json.decode(responce.body);

      return jsonResponse.map((post) => CommentsEntity.fromJson(post)).toList();
    } else {
      throw Exception('Error: ${responce.reasonPhrase}');
    }
  }

  Future<CommentsEntity> sendCommentsToThePost(
      int postid, CommentEntity comment) async {
    final responce = await http.post(
        Uri.parse(
          Constants.URL + Constants.POSTS + '/$postid',
        ),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(comment.toJson()));

    // final comments = CommentEntity.fromJson(jsonDecode(responce.body));
    return CommentsEntity(
        postId: postid,
        id: 11111,
        name: comment.title,
        email: 'Sincere@april.biz',
        body: comment.body);
  }
}
