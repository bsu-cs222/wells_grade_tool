import 'package:flutter/material.dart';
import 'package:wells_gradetool/grade_calculator.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Grade Converter',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final TextEditingController _numberController = TextEditingController();
  gradeCalculator calculator = gradeCalculator();
  String _resultMessage = "";

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  void callConvertGrade(){
    setState(() {
      String grade = calculator.convertGrade(int.parse(_numberController.text));
      _resultMessage = 'Your grade is $grade';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grade Converter Tool'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _numberController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your numeric grade percentage',
              ),
            ),
            ElevatedButton(onPressed: (){
              callConvertGrade();
            }, child: const Text('Press here to see your grade!')
            ),
            SizedBox(
              child: Text(_resultMessage),
            )
          ],
        ),
      ),
    );
  }

}