import 'package:flutter/cupertino.dart';

class user extends StatefulWidget {
  const user({Key? key}) : super(key: key);

  @override
  State<user> createState() => _userState();
}

class _userState extends State<user> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('user'),
    );
  }
}
