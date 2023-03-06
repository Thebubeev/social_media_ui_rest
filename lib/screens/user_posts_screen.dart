import 'package:flutter/material.dart';
import 'package:test_task_rest/api/json_place_holder_api.dart';
import 'package:test_task_rest/models/models/posts_model.dart';
import 'package:test_task_rest/models/models/user_model.dart';
import 'package:test_task_rest/widgets/discription_post_widget.dart';

class UserPostScreen extends StatelessWidget {
  final int userpostid;
  final User user;
  const UserPostScreen({Key? key, required this.userpostid,required  this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textDefaultColor =
        Theme.of(context).textSelectionTheme.selectionColor;

    return Scaffold(
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
        body: FutureBuilder<List<Posts>>(
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              var posts = snapshot.data;
              return ListView.builder(
                  itemCount: posts!.length,
                  itemBuilder: ((context, index) {
                    if (posts![index].userId == userpostid) {
                      return DescriptionPostWidget(
                          userpostid: userpostid,
                          user: user,
                          index: index,
                          posts: posts,
                          textDefaultColor: textDefaultColor!);
                    } else {
                      return Container();
                    }
                  }));
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return const Center(
                child: Text('Something went wrong...'),
              );
            } else {
              return Container();
            }
          }),
          future: JsonPlaceHolderApi().fetchAllPostsData(),
        ));
  }
}
