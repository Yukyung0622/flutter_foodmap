import 'package:contact/model/model_movie.dart';
import 'package:contact/widget/box_slider.dart';
import 'package:contact/widget/carousel_slider.dart';
import 'package:contact/widget/circle_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap(
        {
          'title' : '눈물의 여왕',
          'keyword' : '사랑/로맨틱 코미디/가족/휴먼',
          'cast' : '김수현, 김지원, 박성훈, 곽동현, 이주빈',
          'poster' : 'tearpost.jpg',
          'like' : false
        }
    ),
    Movie.fromMap(
        {
          'title' : '그해 우리는',
          'keyword' : '사랑/로맨틱 코미디',
          'poster' : '11.jpg',
          'like' : false
        }
    ),
    Movie.fromMap(
        {
          'title' : '마이데몬',
          'keyword' : '스릴러/로맨틱 코미디/가족',
          'poster' : '12.jpg',
          'like' : false
        }
    ),
    Movie.fromMap(
        {
          'title' : '킹덤',
          'keyword' : '좀비/스릴러/공포/판타지',
          'poster' : 'king.jpg',
          'like' : false
        }
    ),
    Movie.fromMap(
        {
          'title' : '1988 응답하라',
          'keyword' : '사랑/로맨틱 코미디/가족',
          'poster' : '1988.jpg',
          'like' : false
        }
    ),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movies: movies),
            TopBar(),
          ],
        ),
        CircleSlider(movies: movies),
        BoxSlider(movies: movies),
      ],
    );
  }
}

class TopBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        Image.asset(
          'images/netflixlogoicon.png',
          fit: BoxFit.contain,
          height: 20,
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'TV 프로그램',
              style: TextStyle(fontSize: 14),
            ),
          ),
        Container(
          padding: EdgeInsets.only(right: 1),
          child: Text(
            '영화',
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 1),
          child: Text(
            '내가 찜한 콘텐츠',
            style: TextStyle(fontSize: 14),
          ),
        ),
        ],
      ),
    );
  }
}