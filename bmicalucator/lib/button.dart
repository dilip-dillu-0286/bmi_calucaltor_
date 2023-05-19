import 'package:flutter/material.dart';
import 'inputpage.dart';

class Bottombutton extends StatelessWidget {
  Bottombutton({@required this.onTap});
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Text('CALUCLATE ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      color: bottomcontainercolor,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      height: bottomcontainerheight,
    );
  }
}
