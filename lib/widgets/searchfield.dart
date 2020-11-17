import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key key, this.hintText, this.suffix}) : super(key: key);
  final String hintText;
  final IconData suffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 0),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 0.0),
                borderRadius: BorderRadius.circular(30)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                borderRadius: BorderRadius.circular(30)),
            filled: true,
            hintText: hintText,
            fillColor: Colors.blueAccent.withOpacity(0.2),
            suffixIcon: Icon(
              suffix ?? null,
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 10),
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
