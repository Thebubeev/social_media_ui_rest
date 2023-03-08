import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_rest/api/json_place_holder_api.dart';
import 'package:test_task_rest/bloc/social_media_bloc.dart';
import 'package:test_task_rest/entities/albums_entity_freezed/albums_entity.dart';
import 'package:test_task_rest/entities/user_entity_freezed.dart/user_entity.dart';
import 'package:test_task_rest/widgets/loader_widget.dart';

class UserAlbumScreen extends StatefulWidget {
  final int useralbumid;
  final UserEntity user;
  const UserAlbumScreen(
      {Key? key, required this.useralbumid, required this.user})
      : super(key: key);

  @override
  State<UserAlbumScreen> createState() => _UserAlbumScreenState();
}

class _UserAlbumScreenState extends State<UserAlbumScreen> {
  bool isLoading = false;
  bool isError = false;
  List<AlbumsEntity> albums = [];

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
    BlocProvider.of<SocialMediaBloc>(context).add(FetchAllAlbumsDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    final textDefaultColor =
        Theme.of(context).textSelectionTheme.selectionColor;

    return BlocListener<SocialMediaBloc, SocialMediaState>(
      listener: (context, state) {
        if (state is FetchedAllAlbumsDataState) {
          setState(() {
            isLoading = false;
            isError = false;
            albums = state.albums;
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
              'Albums',
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
                : GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 150,
                            childAspectRatio: 1,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5),
                    itemCount: albums.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: CachedNetworkImageProvider(
                                    albums[index].url)),
                            borderRadius: BorderRadius.circular(10)),
                      );
                    }),
      ),
    );
  }
}
