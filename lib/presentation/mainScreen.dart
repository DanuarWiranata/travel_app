import 'package:flutter/material.dart';
import 'package:travel_app/data/places.dart';
import 'package:travel_app/presentation/detailScreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return TravelCard();
          }),
      ),
      );
  }
}

class TravelCard extends StatelessWidget {
  const TravelCard({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        final places place = placesList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: 275,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: AssetImage(place.image),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //rating dan logo bookmark
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 91, 65),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 8),
                              Text(
                                place.rating,
                                style: TextStyle(color: Colors.white, fontFamily: 'Poppins',),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  place.title,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16, fontFamily: 'Poppins',),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  place.location,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color.fromARGB(255, 149, 149, 149)
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 8),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                place.price,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 91, 65),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                              ),
                              Text(
                                '/pax',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 149, 149, 149),
                                    fontFamily: 'Poppins',
                                    ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
      itemCount: placesList.length,
    );
  }
}

class _bookMarkButton extends StatefulWidget {
  const _bookMarkButton({super.key});

  @override
  State<_bookMarkButton> createState() => __bookMarkButtonState();
}

class __bookMarkButtonState extends State<_bookMarkButton> {
  bool isBookmarked = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isBookmarked = !isBookmarked;
        });
      },
      icon: Icon(
        isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
        color: const Color.fromARGB(255, 0,91, 65),
        size: 20,
      )
    );
  }
}
