part of 'social_media_bloc.dart';

@immutable
abstract class SocialMediaState {}

class SocialMediaInitial extends SocialMediaState {}

class FetchedAllUsersDataState extends SocialMediaState {
  final List<UserEntity> users;

  FetchedAllUsersDataState(this.users);
}

class FetchedAllPostsDataState extends SocialMediaState {
  final List<PostsEntity> posts;
  FetchedAllPostsDataState(this.posts);
}

class FetchedAllAlbumsDataState extends SocialMediaState {
  final List<AlbumsEntity> albums;
  FetchedAllAlbumsDataState(this.albums);
}

class FetchedAllCommentsOfThePostDataState extends SocialMediaState {
  final List<CommentsEntity> comments;
  FetchedAllCommentsOfThePostDataState(this.comments);
}

class SentCommentsToThePostState extends SocialMediaState {
  final CommentEntity comment;
  SentCommentsToThePostState(this.comment);
}
