import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_rest/api/json_place_holder_api.dart';
import 'package:test_task_rest/bloc/social_media_bloc.dart';
import 'package:test_task_rest/entities/comments_entity_freezed/comments_entity.dart';
import 'package:test_task_rest/entities/posts_entity_freezed/posts_entity.dart';
import 'package:test_task_rest/entities/user_entity_freezed.dart/user_entity.dart';
import 'package:test_task_rest/widgets/comment_input_widget.dart';
import 'package:test_task_rest/widgets/comment_post_widget.dart';
import 'package:test_task_rest/widgets/discription_dialog_post_widget.dart';
import 'package:test_task_rest/widgets/loader_widget.dart';
import 'package:test_task_rest/widgets/user_short_info_widget.dart';

class DescriptionPostWidget extends StatefulWidget {
  const DescriptionPostWidget({
    Key? key,
    required this.userpostid,
    required this.user,
    required this.index,
    required this.posts,
    required this.textDefaultColor,
  }) : super(key: key);

  final int userpostid;
  final UserEntity user;
  final List<PostsEntity> posts;
  final Color textDefaultColor;
  final int index;

  @override
  State<DescriptionPostWidget> createState() => _DescriptionPostWidgetState();
}

class _DescriptionPostWidgetState extends State<DescriptionPostWidget> {
  String? firstHalf;
  String? secondHalf;

  bool _flag = true;
  final _key = GlobalKey<FormState>();
  List<CommentsEntity> newComments = [];

  bool isError = false;
  String errorText = '';

  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    final text = widget.posts[widget.index].body;
    if (text.length > 50) {
      firstHalf = text.substring(0, 50);
      secondHalf = text.substring(50, text.length);
    } else {
      firstHalf = text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    final post = widget.posts[widget.index];
    return BlocListener<SocialMediaBloc, SocialMediaState>(
      listener: (context, state) {
        if (state is SentCommentsToThePostState) {
          setState(() {
            newComments.add(state.comment);
          });
        }
        if (state is ErrorState) {
          isError = state.isError;
          errorText = state.text;
        }
      },
      child: isError
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
          : Form(
              key: _key,
              child: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  elevation: 0.6,
                  child: Column(children: [
                    UserShortInfoWidget(
                      widget: widget,
                      name: widget.user.name,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ListTile(
                        onTap: () async {
                          await showGeneralDialog(
                              context: context,
                              pageBuilder:
                                  (context, animation, secondaryAnimation) {
                                return DiscriptionDialogPostWidget(
                                  name: widget.user.name,
                                  widget: widget,
                                  post: post,
                                );
                              });
                        },
                        title: Text(
                          post.title,
                          style: TextStyle(
                              color: widget.textDefaultColor,
                              fontSize: 19,
                              fontStyle: FontStyle.italic),
                        ),
                        subtitle: Padding(
                          padding:
                              const EdgeInsets.only(left: 4, right: 4, top: 6),
                          child: secondHalf!.isEmpty
                              ? Text(firstHalf!)
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(_flag
                                        ? (firstHalf! + "...")
                                        : (firstHalf! + secondHalf!)),
                                    InkWell(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            _flag ? "show more" : "show less",
                                            style: TextStyle(
                                                color: widget.textDefaultColor),
                                          ),
                                        ],
                                      ),
                                      onTap: () {
                                        setState(() {
                                          _flag = !_flag;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    ),
                    CommentInputWidget(
                      globalKey: _key,
                      post: post,
                      textController: textController,
                    ),
                    FutureBuilder<List<CommentsEntity>>(
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          var comments = snapshot.data!;
                          var updatedComments = comments + newComments;
                          return SizedBox(
                            height: 170,
                            child: ListView.builder(
                              itemBuilder: ((context, index) {
                                if (updatedComments[index].postId == post.id) {
                                  return CommentPostWidget(
                                      name: updatedComments[index].email,
                                      comment: updatedComments[index].body);
                                } else {
                                  return Container();
                                }
                              }),
                              itemCount: updatedComments.length,
                            ),
                          );
                        }
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: LoaderWidget(),
                          );
                        }
                        if (snapshot.hasError) {
                          return const Center(
                            child: Text('Something went wrong...'),
                          );
                        }
                        return Container();
                      },
                      future: JsonPlaceHolderApi()
                          .fetchAllCommentsOfThePostData(post.id),
                    )
                  ]),
                ),
              ),
            ),
    );
  }
}
