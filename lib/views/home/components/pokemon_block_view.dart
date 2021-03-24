import 'package:flutter/material.dart';

class PokemonBlockView extends StatefulWidget {
  final String imgUrl;
  final String name;
  final Color color;

  const PokemonBlockView({this.imgUrl, this.name, this.color});

  @override
  _PokemonBlockViewState createState() => _PokemonBlockViewState();
}

class _PokemonBlockViewState extends State<PokemonBlockView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: widget.color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Hero(
              tag: widget.name,
              child: Image.network(
                widget.imgUrl,
                width: MediaQuery.of(context).size.width * 0.3,
                loadingBuilder:
                    (context, Widget child, ImageChunkEvent loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes
                          : null,
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            child: Text(
              widget.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
