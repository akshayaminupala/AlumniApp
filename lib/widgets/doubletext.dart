import 'package:flutter/material.dart';

class DoubleText extends StatelessWidget {
  const DoubleText({Key key, this.first, this.last, this.onTap})
      : super(key: key);
  final String first;
  final String last;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Center(
        child: GestureDetector(
          onTap: onTap ?? () {},
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: first,
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                    text: '  $last', style: TextStyle(color: Colors.orange)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
