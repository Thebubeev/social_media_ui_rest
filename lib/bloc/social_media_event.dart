part of 'social_media_bloc.dart';

@immutable
abstract class SocialMediaEvent {}

class FetchAllUsersDataEvent extends SocialMediaEvent {}

class FetchAllPostsDataEvent extends SocialMediaEvent{}

class FetchAllAlbumsDataEvent extends SocialMediaEvent{}

class FetchAllCommentsOfThePostDataEvent extends SocialMediaEvent{}

class SendCommentsToThePostEvent extends SocialMediaEvent{}