import 'package:fitness_flutter/components/daily_tip.dart';
import 'package:fitness_flutter/components/header.dart';
import 'package:fitness_flutter/components/image_card_with_basic_footer.dart';
import 'package:fitness_flutter/components/section.dart';
import 'package:fitness_flutter/components/image_card_with_internal.dart';
import 'package:fitness_flutter/components/main_card_programs.dart';
import 'package:fitness_flutter/components/user_photo.dart';
import 'package:fitness_flutter/components/user_tip.dart';
import 'package:fitness_flutter/models/exercise.dart';
import 'package:fitness_flutter/pages/activity_detail.dart';

import 'package:flutter/material.dart';

class Programs extends StatelessWidget {
  final List<Exercise> exercises = [
    Exercise(
      image: 'assets/images/image001.jpg',
      title: 'BEGINNER',
      time: '5 min',
      difficult: 'Low',
    ),
    Exercise(
      image: 'assets/images/image002.jpg',
      title: 'INTERMEDIATE',
      time: '10 min',
      difficult: 'Medium',
    ),
    Exercise(
      image: 'assets/images/image003.jpg',
      title: 'ADVANCED',
      time: '25 min',
      difficult: 'High',
    )
  ];

  List<Widget> generateList(BuildContext context) {
    List<Widget> list = [];
    int count = 0;
    exercises.forEach((exercise) {
      Widget element = Container(
        margin: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          child: ImageCardWithBasicFooter(
            exercise: exercise,
            tag: 'imageHeader$count',
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return ActivityDetail(
                    exercise: exercise,
                    tag: 'imageHeader$count',
                  );
                },
              ),
            );
          },
        ),
      );
      list.add(element);
      count++;
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Header(
                  'CAMFIT',
                  rightSide: UserPhoto(),
                ),
                MainCardPrograms(), // MainCard
                Section(
                  title: 'Fat burning',
                  horizontalList: this.generateList(context),
                ),
                Section(
                  title: 'Abs Generating',
                  horizontalList: <Widget>[
                    ImageCardWithInternal(
                      image: 'assets/images/image020.jpg',
                      title: 'Abs \nBeginner',
                      duration: '7 min',
                    ),
                    ImageCardWithInternal(
                      image: 'assets/images/image021.jpg',
                      title: 'Abs \nIntermediate',
                      duration: '7 min',
                    ),
                    ImageCardWithInternal(
                      image: 'assets/images/image004.jpg',
                      title: 'Abs \nAdvanced',
                      duration: '7 min',
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  padding: EdgeInsets.only(top: 10.0, bottom: 40.0),
                  decoration: BoxDecoration(
                    color: Colors.teal[200],
                  ),
                  child: Column(
                    children: <Widget>[
                      Section(
                        title: 'Daily Tips',
                        horizontalList: <Widget>[
                          UserTip(
                            image: 'assets/images/image010.jpg',
                            name: 'John',
                          ),
                          UserTip(
                            image: 'assets/images/image016.jpg',
                            name: 'Ruby',
                          ),
                          UserTip(
                            image: 'assets/images/image017.jpg',
                            name: 'Smith',
                          ),
                          UserTip(
                            image: 'assets/images/image018.jpg',
                            name: 'Angel',
                          ),
                        ],
                      ),
                      Section(
                        horizontalList: <Widget>[
                          DailyTip(),
                          DailyTip1(),
                          DailyTip2(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
