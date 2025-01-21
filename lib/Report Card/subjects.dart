import 'package:flutter/material.dart';
import 'package:learning/Report%20Card/component/result_item.dart';
import 'package:learning/Report%20Card/component/textfield_item.dart';
import 'package:learning/Report%20Card/result.dart';

class Subjects extends StatelessWidget {
  final Map<String, String> studentInfo;
  Subjects({super.key, required this.studentInfo});

  final Map<String, String> subjectsnMarks = {};

  TextEditingController studentNameController = TextEditingController();
  TextEditingController classController = TextEditingController();
  TextEditingController englishController = TextEditingController();
  TextEditingController hindiController = TextEditingController();
  TextEditingController socialController = TextEditingController();
  TextEditingController scienceController = TextEditingController();
  TextEditingController mathController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ResultItem(
                  title: 'NAME',
                  child1: Text(
                    studentInfo['name'].toString(),
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  )),
              ResultItem(
                title: 'CLASS/SEC',
                child1: Row(children: [
                  Text(
                    studentInfo['class'].toString(),
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    studentInfo['sec'].toString(),
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  )
                ]),
              ),
              const Row(children: [
                Text(
                  'SUBJECTS',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 51,
                ),
                Text(
                  'MARKS',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              TextfieldItem(
                title: 'ENGLISH',
                controller: englishController,
              ),
              TextfieldItem(
                title: 'HINDI',
                controller: hindiController,
              ),
              TextfieldItem(
                title: 'SST',
                controller: socialController,
              ),
              TextfieldItem(
                title: 'SCIENCE',
                controller: scienceController,
              ),
              TextfieldItem(
                title: 'MATH',
                controller: mathController,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                    ),
                  ),
                  onPressed: () {
                    subjectsnMarks['ENGLISH'] = englishController.text;
                    subjectsnMarks['HINDI'] = hindiController.text;
                    subjectsnMarks['SST'] = socialController.text;
                    subjectsnMarks['SCIENCE'] = scienceController.text;
                    subjectsnMarks['MATH'] = mathController.text;

                    List<Map<String, String>> subjectsList =
                        subjectsnMarks.entries.map((entry) {
                      return {'sub': entry.key, 'marks': entry.value};
                    }).toList();

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Result(
                          studentInfo: studentInfo,
                          subjectsnMarks: subjectsList,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'CALCULATE RESULT',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
