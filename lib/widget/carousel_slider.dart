import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:contact/model/model_movie.dart';


class CarouselImage extends StatefulWidget {
  final List<Movie> movies ;
  CarouselImage({required this.movies}) ;
  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  late List<Movie> movies;
  late List<Widget> images;
  late List<String> keywords;
  late List<bool> likes;
  int _crrentPage = 0;
  late String _crrentKeyword;

  @override
  void initState(){
    super.initState();
    movies = widget.movies;
    images = movies.map((m) => Image.asset('./images/' + m.poster)).toList();
    keywords = movies.map((m) => m.keyword).toList();
    likes = movies.map((m) => m.like).toList();
    _crrentKeyword = keywords[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CarouselSlider(
            items: images,
            options: CarouselOptions (onPageChanged: (index, reason) {
              setState(() {
                _crrentPage = index;
                _crrentKeyword = keywords[_crrentPage];
              });
            }),
          ),
          Container(
            padding: EdgeInsets.all(20),
          ),
          Container(
            child: Text(_crrentKeyword),
          ),
        ],
      ),
    );
  }
}