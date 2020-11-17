import 'package:flutter/material.dart';

class EditField extends StatelessWidget {
  const EditField({
    this.label,
    this.initialValue,
    this.textInput,
    Key key,
  }) : super(key: key);
  final String label;
  final String initialValue;
  final TextInputType textInput;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label == null ? '' : ' $label',
            style: TextStyle(color: Colors.blue),
          ),
          SizedBox(height: 5),
          Container(
            height: 25,
            child: TextFormField(
              keyboardType: textInput ?? TextInputType.emailAddress,
              initialValue: initialValue,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                filled: true,
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
