import 'package:flutter/material.dart';

class HwScreen extends StatelessWidget {
  const HwScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('عاصمة فلسطين'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/jers.png',
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'مدينة القدس',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          rowDetails(text1: 'الاسم', text2: 'القدس'),
          const SizedBox(
            height: 10,
          ),
          rowDetails(text1: 'المساحة', text2: '125 كم'),
          const SizedBox(
            height: 10,
          ),
          rowDetails(text1: 'السكان', text2: '358000 نسمة'),
          const SizedBox(
            height: 10,
          ),
          rowDetails(text1: 'الدولة', text2: 'فلسطين'),
          const SizedBox(
            height: 10,
          ),
          rowDetails(text1: 'اسم الطالب', text2: 'محمد ابو سخيلة'),
        ],
      ),
    );
  }

  Widget rowDetails({
    required String text1,
    required String text2,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10
      ),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 2,
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: Center(child: Text(text2)),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: Center(child: Text(text1)),
            ),
          ),
          const SizedBox(
            width: 2,
          ),
        ],
      ),
    );
  }
}
