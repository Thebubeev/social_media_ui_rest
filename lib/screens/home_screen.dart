import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_rest/api/json_place_holder_api.dart';
import 'package:test_task_rest/bloc/social_media_bloc.dart';
import 'package:test_task_rest/entities/user_entity_freezed.dart/user_entity.dart';
import 'package:test_task_rest/screens/user_profile_screen.dart';
import 'package:test_task_rest/widgets/change_theme_widget.dart';
import 'package:test_task_rest/widgets/loader_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;
  bool isError = false;
  List<UserEntity> users = [];

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
    BlocProvider.of<SocialMediaBloc>(context).add(FetchAllUsersDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    final textDefaultTheme =
        TextStyle(color: Theme.of(context).textSelectionTheme.selectionColor);
    return BlocListener<SocialMediaBloc, SocialMediaState>(
      listener: (context, state) {
        if (state is FetchedAllUsersDataState) {
          setState(() {
            isLoading = false;
            isError = false;
            users = state.users;
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
            actions: const [ChangeThemeidget()],
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: Text(
              'My friends',
              style: TextStyle(
                  color: Theme.of(context).textSelectionTheme.selectionColor),
            ),
            centerTitle: true,
          ),
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
                      itemCount: users.length,
                      itemBuilder: ((context, index) {
                        return ListTile(
                          title: Text(
                            users[index].name,
                            style: textDefaultTheme,
                          ),
                          subtitle: Text(users[index].username,
                              style: textDefaultTheme),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => UserProfileScreen(
                                        user: users[index]))));
                          },
                        );
                      }))),
    );
  }
}
