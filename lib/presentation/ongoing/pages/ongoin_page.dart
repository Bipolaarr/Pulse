import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pulse/core/configs/images.dart';
import 'package:pulse/core/configs/vectors.dart';


class OngoingPage extends StatelessWidget{
    
  const OngoingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.ongoingPageBackground),
                    fit: BoxFit.cover
                )
            ),
            child: Center(
                child: Column(
                    children: [
                      const SizedBox(height: 150),
                      SvgPicture.asset(
                        Vectors.darkLogo,
                        width: 150,
                        height: 150,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Infinite Streams, Endless Stories.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 370),
                      SizedBox(
                        width: 350,
                        height: 90,
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shadowColor: null, 
                            elevation: 0,
                            enableFeedback: true,
                            overlayColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)
                            )
                          ),
                          child: Text(
                            'Get Started with Pulse',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 49,
                            width: 370,
                            child: TextButton(
                              onPressed: () {

                              },
                              style: ButtonStyle(
                                overlayColor: WidgetStateProperty.all(Colors.transparent),
                                animationDuration: Duration.zero
                              ),
                              child: Text(
                                'Already Have an Account? Login here',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ),
                          )
                        ],
                      ),
                    ],
                ),
            )
        )
    );
  } 



}