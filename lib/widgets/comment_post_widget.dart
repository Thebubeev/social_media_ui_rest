import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CommentPostWidget extends StatelessWidget {
  final String name;
  final String comment;
  const CommentPostWidget(
      {Key? key, required this.name, required this.comment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, bottom: 25),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                    width: 30,
                    height: 30,
                    child: CachedNetworkImage(
                      placeholder: (context, _) => CircularProgressIndicator(
                          color: Theme.of(context)
                              .textSelectionTheme
                              .selectionColor),
                      imageUrl:
                          'https://upload.wikimedia.org/wikipedia/commons/7/72/Default-welcomer.png',
                      fit: BoxFit.cover,
                    ))),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.blueGrey,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  comment,
                  style: TextStyle(
                      color:
                          Theme.of(context).textSelectionTheme.selectionColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
