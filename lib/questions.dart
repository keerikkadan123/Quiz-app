import 'package:flutter/material.dart';
import 'package:quiz/new.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  List qustionList = [
    Quiz(qus: "grass is blue", ans: false),
    Quiz(qus: "Diya is donkey", ans: true),
    Quiz(qus: "tomorrow is a holiday", ans: true),
    Quiz(qus: "kid is alive", ans: false),
    Quiz(qus: "computer is fast", ans: false),
    Quiz(qus: "i dont have money", ans: true),
    Quiz(qus: "he is dead", ans: false),
    Quiz(qus: "Diya is crying", ans: true),
    Quiz(qus: "Rahul is gay", ans: true),
    Quiz(qus: "college is fun", ans: true),
  ];
  int questionnum = 0;
  String result = '';
  void nextqus() {
    if (questionnum < qustionList.length) {
      questionnum++;
    }
  }

  void anscheck(bool answer) {
    print(qustionList[questionnum].ans);
    if (answer == qustionList[questionnum].ans) {
      result="correct";
    } else {
      result="wrong";
    }
    // print(answer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(qustionList[questionnum].qus,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black)),
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        anscheck(true);
                        nextqus();

                      });
                    },
                    child: const Text(
                      'YES',
                      style: TextStyle(color: Colors.black),
                    ))),
            SizedBox(height: 10),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        anscheck(false);
                        nextqus();
                      });
                    },
                    child: const Text(
                      'NO',
                      style: TextStyle(color: Colors.black),
                    ))),

            Text(result)
          ],
        ));
  }
}
