part of 'social_media_bloc.dart';

@immutable
abstract class SocialMediaEvent {}

class FetchAllUsersDataEvent extends SocialMediaEvent {}

class FetchAllPostsDataEvent extends SocialMediaEvent {}

class FetchAllAlbumsDataEvent extends SocialMediaEvent {}

class FetchAllCommentsOfThePostDataEvent extends SocialMediaEvent {
  final int postId;
  FetchAllCommentsOfThePostDataEvent(this.postId);
}

class SendCommentsToThePostEvent extends SocialMediaEvent {
  final int postId;
  final CommentEntity commentEntity;
  SendCommentsToThePostEvent(this.postId, this.commentEntity);
}
