import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_task_rest/entites/posts_entity_freezed/posts_entity.dart';
import 'package:test_task_rest/entites/user_entity_freezed.dart/user_entity.dart';
import 'package:test_task_rest/models/albums_entity_freezed/albums_entity.dart';
import 'package:test_task_rest/models/comment_entity_freezed/comment_entity.dart';
import 'package:test_task_rest/models/comments_entity_freezed/comments_entity.dart';
part 'social_media_event.dart';
part 'social_media_state.dart';

class SocialMediaBloc extends Bloc<SocialMediaEvent, SocialMediaState> {
  SocialMediaBloc() : super(SocialMediaInitial()) {
    on<SocialMediaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
