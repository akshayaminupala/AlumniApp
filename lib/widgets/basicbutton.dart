import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget {
  const BasicButton({Key key, this.label, this.onPressed}) : super(key: key);
  final String label;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        child: Text(
          label ?? '',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        color: Colors.orange,
        textColor: Colors.white,
        onPressed: onPressed ?? () {},
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key key, this.label, this.onPressed}) : super(key: key);
  final String label;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.orange)),
        child: Text(
          label ?? '',
          style: TextStyle(fontSize: 18),
        ),
        color: Colors.orange,
        textColor: Colors.white,
        onPressed: onPressed ?? () {},
      ),
    );
  }
}
