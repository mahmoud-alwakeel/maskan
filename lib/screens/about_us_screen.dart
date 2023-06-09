import 'package:flutter/material.dart';
import 'package:maskan/widgets/app_bar.dart';

import '../widgets/card_widget.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 10, 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 4,
                      height: 50,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "A New Way To Explore Real Estate!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey,
                margin: EdgeInsets.fromLTRB(47, 20, 47, 0),
                child: Stack(
                  // this is for the word maskan so it can over flows th stack
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset("images/about-us-one.jpeg"),
                    Positioned(
                      left: -40,
                      top: 80,
                      child: Container(
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                          color: Colors.red,
                          child: const Text(
                            "MASKAN",
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              RichText(
                text: const TextSpan(
                  text: 'To sell your property, ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text:
                          'Just send your personal information including how to contact you in addition to your property information at',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: ' This Email',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Container(
                height: 200,
                width: 500, // Increase the width
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("images/about-us-two.jpeg"),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Who Are We ?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                              "Lorem ipsum dolor \n sit amet consectetur adipisicing \n elit. Nostrum, "),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Why Us ?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const CustomCard(
                  imagePath: 'https://www.mashvisor.com/blog/wp-content/uploads/2019/02/The-Ultimate-Beginners-Guide-to-Real-Estate-Investment-Analysis.jpg',
                  title: 'Analysis',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente iusto reprehenderit recusandae suscipit harum .'),
              const SizedBox(
                height: 10,
              ),
              const CustomCard(
                  imagePath: 'https://www.iqvis.com/wp-content/uploads/2019/06/Best-Real-Estate-Virtual-Reality-Apps.jpg',
                  title: 'VR Real-estate',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente iusto reprehenderit recusandae suscipit harum .'),
              const SizedBox(
                height: 10,
              ),
              const CustomCard(
                imagePath: 'https://ritu-19.github.io/images/housing_0_2.jpg',
                title: 'Real-estate Price Prediction',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente iusto reprehenderit recusandae suscipit harum .',
              ),
            ],
          ),
        ),
      );
  }
}
