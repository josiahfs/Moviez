import 'package:flutter/material.dart';
import 'package:moviez/model/movie_model.dart';
import 'package:moviez/widget/MovieList.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController textController = TextEditingController();

  void updateList(String value) {
    setState(() {
      display_list = movie_list
          .where((element) =>
              element.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: 327,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
              child: TextField(
                onChanged: (value) => updateList(value),
                style: TextStyle(color: Color(0xff0D0846), fontSize: 16),
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: "eg: The Dark Knight",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 22, right: 16),
                      child: Icon(
                        Icons.search,
                        // size: 36,
                      ),
                    ),
                    prefixIconColor: Color(0xff0D0846)),
              ),
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
                      text: ' (${display_list.length})',
                      style: TextStyle(fontWeight: FontWeight.w500))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 520,
              child: display_list.length == 0
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Center(
                          child: Text(
                        'No result found',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff0D0846)),
                      )),
                    )
                  : ListView.builder(
                      itemBuilder: (context, index) => MovieList(
                        image: display_list[index].image!,
                        title: display_list[index].title!,
                        genre: display_list[index].genre!,
                        rating: display_list[index].rating!,
                      ),
                      itemCount: display_list.length,
                    ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: display_list.length != 0
                  ? Center(
                      child: InkWell(
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
                  : Center(),
            )
          ]),
        ),
      ),
    );
  }
}
