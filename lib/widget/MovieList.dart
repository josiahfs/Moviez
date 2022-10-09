import 'package:flutter/material.dart';
import 'package:moviez/widget/Rating.dart';

class MovieList extends StatelessWidget {
  String image, title, genre;
  int rating;

  MovieList(
      {required this.image,
      required this.title,
      required this.genre,
      required this.rating});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              height: 126,
              width: 100,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                genre,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff929292),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [1, 2, 3, 4, 5].map((index) {
                  return Container(
                    margin: EdgeInsets.only(left: 4),
                    child: Rating(index: index, rating: rating),
                  );
                }).toList(),
              )
            ],
          )
        ],
      ),
    );
  }
}
