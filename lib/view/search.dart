import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:moviez/widget/MovieList.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            AnimSearchBar(
              width: 327,
              textController: textController,
              onSuffixTap: SearchPage(),
            ),
            SizedBox(
              height: 35,
            ),
            RichText(
              text: TextSpan(
                text: 'Search Result',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff0D0846)),
                children: [
                  TextSpan(
                      text: ' (3)',
                      style: TextStyle(fontWeight: FontWeight.w500))
                ],
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
            MovieList(
              image: 'assets/images/image6.png',
              title: 'Beauty & Beast',
              genre: 'Sci-Fiction',
              rating: 5,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 55),
              child: Center(
                child: Container(
                  width: 220,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff0D0846),
                    borderRadius: BorderRadius.circular(37),
                  ),
                  child: Center(
                    child: Text(
                      'Suggest Movie',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
