import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:test_task_rest/api/json_place_holder_api.dart';
import 'package:test_task_rest/entities/albums_entity_freezed/albums_entity.dart';
import 'package:test_task_rest/entities/comment_entity_freezed/comment_entity.dart';
import 'package:test_task_rest/entities/comments_entity_freezed/comments_entity.dart';
import 'package:test_task_rest/entities/posts_entity_freezed/posts_entity.dart';
import 'package:test_task_rest/entities/user_entity_freezed.dart/user_entity.dart';
part 'social_media_event.dart';
part 'social_media_state.dart';

class SocialMediaBloc extends Bloc<SocialMediaEvent, SocialMediaState> {
  final jsonPlaceHolderApi = JsonPlaceHolderApi();
  SocialMediaBloc() : super(SocialMediaInitial()) {
    on<FetchAllUsersDataEvent>((event, emit) async {
      try {
        final users = await jsonPlaceHolderApi.fetchAllUsersData();
        emit(FetchedAllUsersDataState(users));
      } catch (e) {
        emit(ErrorState(
            isError: true, text: 'Произошла ошибка в загрузке пользователей'));
        debugPrint(e.toString());
      }
    });

    on<FetchAllPostsDataEvent>((event, emit) async {
      try {
        final posts = await jsonPlaceHolderApi.fetchAllPostsData();
        emit(FetchedAllPostsDataState(posts));
      } catch (e) {
        emit(ErrorState(
            isError: true, text: 'Произошла ошибка в загрузке постов'));
        debugPrint(e.toString());
      }
    });

    on<FetchAllAlbumsDataEvent>((event, emit) async {
      try {
        final albums = await jsonPlaceHolderApi.fetchAllAlbumsData();
        emit(FetchedAllAlbumsDataState(albums));
      } catch (e) {
        emit(ErrorState(
            isError: true, text: 'Произошла ошибка в загрузке альбомов'));
        debugPrint(e.toString());
      }
    });

    on<FetchAllCommentsOfThePostDataEvent>((event, emit) async {
      try {
        final comments = await jsonPlaceHolderApi
            .fetchAllCommentsOfThePostData(event.postId);
        emit(FetchedAllCommentsOfThePostDataState(comments));
      } catch (e) {
        emit(ErrorState(
            isError: true, text: 'Произошла ошибка в загрузке комментариев'));
        debugPrint(e.toString());
      }
    });

    on<SendCommentsToThePostEvent>((event, emit) async {
      try {
        final comment = await jsonPlaceHolderApi.sendCommentsToThePost(
          event.postId,
          event.commentEntity,
        );
        emit(SentCommentsToThePostState(comment));
      } catch (e) {
        emit(ErrorState(isError: true, text: 'Произошла ошибка в отправке'));
        debugPrint(e.toString());
      }
    });
  }
}
