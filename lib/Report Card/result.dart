import 'package:flutter/material.dart';
import 'package:learning/Report%20Card/component/result_item.dart';

class Result extends StatelessWidget {
  final Map<String, String> studentInfo;
  final List<Map<String, dynamic>> subjectsnMarks;

  const Result(
      {super.key, required this.studentInfo, required this.subjectsnMarks});

  String getRemarks(String marks) {
    int parsedMarks = int.parse(marks);
    if (parsedMarks >= 90) {
      return 'Outstanding';
    } else if (parsedMarks >= 80) {
      return 'Excellent';
    } else if (parsedMarks >= 70) {
      return 'Very Good';
    } else if (parsedMarks >= 60) {
      return 'Good';
    } else if (parsedMarks >= 50) {
      return 'Average';
    } else {
      return 'Fail';
    }
  }
  // String getRemarks(String marks) {
  //   switch (int.parse(marks)) {
  //     case > 90:
  //       return 'Outstanding';
  //     case > 80 && <= 90:
  //       return 'Excellent';
  //     case > 70 && <= 80:
  //       return 'Good';
  //     case > 70 && <= 80:
  //       return 'Average';
  //     case > 50 && <= 60:
  //       return 'Fair';
  //     default:
  //       return 'Fail';
  //   }
  // }

  double calculateTotalMarks() {
    double total = 0.0;
    for (var subject in subjectsnMarks) {
      total += double.parse(subject["marks"]!);
    }
    return total;
  }

  double calculateTotalPercentage() {
    double totalMarks = calculateTotalMarks();
    double maxMarks = subjectsnMarks.length * 100;
    return (totalMarks / maxMarks) * 100;
  }

  double calculateAverageMarks() {
    double totalMarks = calculateTotalMarks();
    return totalMarks / subjectsnMarks.length;
  }

  double calculateAveragePercentage() {
    double averageMarks = calculateAverageMarks();
    return (averageMarks / 100) * 100;
  }

  @override
  Widget build(BuildContext context) {
    double totalMarks = calculateTotalMarks();
    double averageMarks = calculateAverageMarks();
    double totalPercentage = calculateTotalPercentage();
    double averagePercentage = calculateAveragePercentage();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(children: [
            const Expanded(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/pic_1.jpg',
                ),
                radius: 30,
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  ResultItem(
                      title: 'NAME',
                      child1: Text(
                        studentInfo['name'] ?? "Unknown",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      )),
                  ResultItem(
                    title: 'CLASS/SEC',
                    child1: Row(children: [
                      Text(
                        studentInfo['class'] ?? "Unknown",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        studentInfo['sec'] ?? "",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
          ]),
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'SUBJECTS',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'MARKS',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'REMARKS',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          for (int i = 0; i < subjectsnMarks.length; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 3,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Center(
                      child: Text(
                        subjectsnMarks[i]['sub']!,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Center(
                      child: Text(
                        subjectsnMarks[i]['marks']!,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Center(
                      child: Text(
                        getRemarks(subjectsnMarks[i]['marks'].toString()),
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'TOTAL MARKS',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                totalMarks.toString(), // Display total marks
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                "${totalPercentage.toStringAsFixed(2)}%", // Display percentage
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'AVERAGE MARKS',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                averageMarks.toString(), // Display total marks
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                "${averagePercentage.toStringAsFixed(2)}%", // Display percentage
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
