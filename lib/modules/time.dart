import 'package:flutter/cupertino.dart';

class time extends StatefulWidget {
  const time({Key? key}) : super(key: key);

  @override
  State<time> createState() => _timeState();
}

class _timeState extends State<time> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('time'),
    );
  }
}
