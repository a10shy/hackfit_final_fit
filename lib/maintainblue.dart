import 'package:flutter/material.dart';

class MaintananceBlue extends StatelessWidget {
  const MaintananceBlue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      color: Colors.white,
      child: const Center(
        child: Text('Page under Maintanence',
            style: TextStyle(fontSize: 32, color: Colors.black)),
      ));
}
