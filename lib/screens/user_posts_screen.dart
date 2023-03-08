import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_rest/api/json_place_holder_api.dart';
import 'package:test_task_rest/bloc/social_media_bloc.dart';
import 'package:test_task_rest/entities/posts_entity_freezed/posts_entity.dart';
import 'package:test_task_rest/entities/user_entity_freezed.dart/user_entity.dart';
import 'package:test_task_rest/widgets/discription_post_widget.dart';
import 'package:test_task_rest/widgets/loader_widget.dart';

class UserPostScreen extends StatefulWidget {
  final int userpostid;
  final UserEntity user;
  const UserPostScreen({Key? key, required this.userpostid, required this.user})
      : super(key: key);

  @override
  State<UserPostScreen> createState() => _UserPostScreenState();
}

class _UserPostScreenState extends State<UserPostScreen> {
  bool isLoading = false;
  bool isError = false;
  List<PostsEntity> posts = [];

  String errorText = '';

  @override
  void initState() {
    init();
    super.initState();
  }

  init() {
    setState(() {
      isLoading = true;
    });
    BlocProvider.of<SocialMediaBloc>(context).add(FetchAllPostsDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    final textDefaultColor =
        Theme.of(context).textSelectionTheme.selectionColor;

    return BlocListener<SocialMediaBloc, SocialMediaState>(
      listener: (context, state) {
        if (state is FetchedAllPostsDataState) {
          setState(() {
            isLoading = false;
            isError = false;
            posts = state.posts;
          });
        }

        if (state is ErrorState) {
          isLoading = false;
          isError = state.isError;
          errorText = state.text;
        }
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).textSelectionTheme.selectionColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: Text(
              'Posts',
              style: TextStyle(color: textDefaultColor),
            )),
        body: isLoading
            ? const LoaderWidget()
            : isError
                ? Center(
                    child: Card(
                        elevation: 1.0,
                        color: const Color.fromARGB(255, 242, 222, 222),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          child: Center(
                            child: Text(
                              errorText,
                              style: const TextStyle(
                                  fontFamily: 'Arial',
                                  color: Color.fromARGB(255, 169, 69, 68)),
                            ),
                          ),
                        )),
                  )
                : ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: ((context, index) {
                      if (posts[index].userId == widget.userpostid) {
                        return DescriptionPostWidget(
                            userpostid: widget.userpostid,
                            user: widget.user,
                            index: index,
                            posts: posts,
                            textDefaultColor: textDefaultColor!);
                      } else {
                        return Container();
                      }
                    })),
      ),
    );
  }
}
