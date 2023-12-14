import 'package:flutter/material.dart';
import 'package:travel_app/presentation/mainScreen.dart';

class onboardingScreen extends StatelessWidget {
  const onboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/asset_travel.png'),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 48, vertical: 64),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'EXPLORIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Begin your extraordinary journey into the world of exploration with our user-friendly travel app.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width - 48,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => MainScreen())));
                          },
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              backgroundColor: Color.fromARGB(255, 0, 91, 65),
                              padding: EdgeInsets.symmetric(vertical: 16)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
