import 'package:flutter/material.dart';
import 'package:travel_app/data/places.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.place});
  final places place;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                //gambar konten
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 320,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(place.image),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          bottomRight: Radius.circular(24))),
                ),
                //button back dan bookmark
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24)),
                            child: Icon(
                              Icons.arrow_back,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24)),
                          child: _bookMarkButton()
                        ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              place.title,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 0, 91, 65),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'
                                ),
                                  
                            ),
                            SizedBox(height: 8),
                            Text(
                              place.location,
                              style:
                                  TextStyle(
                                    color: Color.fromARGB(255, 149, 149, 149),
                                    fontSize: 14,
                                    fontFamily: 'Poppins'
                                  ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            place.price,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 91, 65),
                              fontFamily: 'Poppins'
                            ),
                          ),
                          Text(
                            '/person',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 149, 149, 149),
                              fontFamily: 'Poppins'
                            ),
                            )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 24),
                  //description
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: Colors.black
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.black,
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                place.rating,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins'
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: Colors.black
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer_outlined,
                                color: Colors.black,
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                place.duration,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins'
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Description',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 91, 65),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    place.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color.fromARGB(255, 149, 149, 149),
                      fontFamily: 'Poppins'
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
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
