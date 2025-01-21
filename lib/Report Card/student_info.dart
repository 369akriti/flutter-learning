import 'package:flutter/material.dart';
import 'package:learning/Report%20Card/component/textfield_item.dart';
import 'package:learning/Report%20Card/subjects.dart';

class StudentInfo extends StatelessWidget {
  StudentInfo({super.key});

  Map<String, String> studentInfo = {};

  TextEditingController studentNameController = TextEditingController();
  TextEditingController classController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Text(
            'USER DETAILS',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextfieldItem(
            title: 'NAME',
            controller: studentNameController,
          ),
          TextfieldItem(
            title: 'CLASS',
            controller: classController,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              'SECTION',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 50,
              width: 250,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(
                      4.0,
                    ),
                  ),
                ),
                value: '-sel-',
                items: ['-sel-', 'A', 'B', 'C', 'D', 'E', 'F'].map((e) {
                  return DropdownMenuItem<String>(value: e, child: Text(e));
                }).toList(),
                onChanged: (value) {
                  studentInfo['sec'] = value!;
                },
              ),
            ),
          ]),
          SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      8.0,
                    ),
                  )),
              onPressed: () {
                studentInfo['name'] = studentNameController.text;
                studentInfo['class'] = classController.text;

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Subjects(
                      studentInfo: studentInfo,
                    ),
                  ),
                );
              },
              child: const Text(
                'ENTER',
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
