import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviez/view/search.dart';
import 'package:moviez/widget/MovieCard.dart';
import 'package:moviez/widget/MovieList.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xffFDFDFE), Color(0xffF3F4F8)],
        ),
      ),
      child: Scaffold(
        // backgroundColor: Colors.white,
        body: SafeArea(
          bottom: false,
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Moviez',
                          style: TextStyle(
                              fontSize: 28,
                              color: Color(0xff0D0846),
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Watch much easier',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff929292),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(SearchPage());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 11, left: 22, right: 11, bottom: 11),
                          child: Icon(
                            Icons.search,
                            size: 30,
                            color: Color(0xff0D0846),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 279,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    MovieCard(
                      image: 'assets/images/image3.png',
                      title: 'John Wick 4',
                      genre: 'Action, Crime',
                      rating: 5,
                    ),
                    MovieCard(
                      image: 'assets/images/cover.png',
                      title: 'Bohemian',
                      genre: 'Documentary',
                      rating: 3,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  'From Disney',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MovieList(
                image: 'assets/images/image7.png',
                title: 'Mulan Session',
                genre: 'History, War',
                rating: 3,
              ),
              MovieList(
                image: 'assets/images/image6.png',
                title: 'Beauty & Beast',
                genre: 'Sci-Fiction',
                rating: 5,
              ),
            ],
          ),
        ),
        // ),
      ),
    );
  }
}
