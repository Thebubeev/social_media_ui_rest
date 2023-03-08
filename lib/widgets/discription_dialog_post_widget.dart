import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_rest/api/json_place_holder_api.dart';
import 'package:test_task_rest/bloc/social_media_bloc.dart';
import 'package:test_task_rest/entities/comments_entity_freezed/comments_entity.dart';
import 'package:test_task_rest/entities/posts_entity_freezed/posts_entity.dart';
import 'package:test_task_rest/widgets/comment_input_widget.dart';
import 'package:test_task_rest/widgets/comment_post_widget.dart';
import 'package:test_task_rest/widgets/loader_widget.dart';
import 'package:test_task_rest/widgets/user_short_info_widget.dart';

class DiscriptionDialogPostWidget extends StatefulWidget {
  final String name;
  final Widget widget;
  final PostsEntity post;
  const DiscriptionDialogPostWidget(
      {Key? key, required this.name, required this.widget, required this.post})
      : super(key: key);

  @override
  State<DiscriptionDialogPostWidget> createState() =>
      _DiscriptionDialogPostWidgetState();
}

class _DiscriptionDialogPostWidgetState
    extends State<DiscriptionDialogPostWidget> {
  bool isLoading = false;
  bool isError = false;
  List<CommentsEntity> comments = [];

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
    BlocProvider.of<SocialMediaBloc>(context)
        .add(FetchAllCommentsOfThePostDataEvent(widget.post.id));
  }

  TextEditingController textController = TextEditingController();
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<SocialMediaBloc, SocialMediaState>(
      listener: (context, state) {
        if (state is FetchedAllCommentsOfThePostDataState) {
          setState(() {
            isLoading = false;
            isError = false;
            comments = state.comments;
          });
        }

        if (state is ErrorState) {
          isLoading = false;
          isError = state.isError;
          errorText = state.text;
        }
      },
      child: isLoading
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
              : SafeArea(
                  child: Form(
                    key: _key,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                          color: Theme.of(context).primaryColor,
                          child: Column(children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                UserShortInfoWidget(
                                    name: widget.name, widget: widget),
                                IconButton(
                                    onPressed: (() => Navigator.pop(context)),
                                    icon: Icon(
                                      Icons.close,
                                      color: Theme.of(context).iconTheme.color,
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ListTile(
                                title: Text(
                                  widget.post.title,
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .textSelectionTheme
                                          .selectionColor,
                                      fontSize: 19,
                                      fontStyle: FontStyle.italic),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4, right: 4, top: 6),
                                  child: Text(widget.post.body),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            CommentInputWidget(
                              globalKey: _key,
                              post: widget.post,
                              textController: textController,
                            ),
                            SizedBox(
                              height: 280,
                              child: ListView.builder(
                                itemBuilder: ((context, index) {
                                  if (comments[index].postId ==
                                      widget.post.id) {
                                    return CommentPostWidget(
                                        name: comments[index].email,
                                        comment: comments[index].body);
                                  } else {
                                    return Container();
                                  }
                                }),
                                itemCount: comments.length,
                              ),
                            )
                          ]),
                          elevation: 1),
                    ),
                  ),
                ),
    );
  }
}
