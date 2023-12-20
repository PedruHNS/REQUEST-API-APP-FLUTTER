import 'package:flutter/material.dart';

import '../../models/movie.dart';

class CardCustom extends StatelessWidget {
  final Movie movie;

  const CardCustom({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Card(
              clipBehavior: Clip.hardEdge,
              child: movie.image != null
                  ? Ink(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(movie.image!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : Ink(
                      child: const Center(
                        child: Icon(Icons.error),
                      ),
                    )),
        ),
        Text(
          movie.name,
          style: const TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
