import 'package:flutter/material.dart';

class DetailField extends StatelessWidget {
  const DetailField({
    this.iconData,
    this.label,
    this.edit = false,
    this.onTap,
    Key key,
  }) : super(key: key);
  final IconData iconData;
  final String label;
  final bool edit;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 10),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Colors.orange,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              label,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            Expanded(
              child: Container(),
            ),
            Icon(edit ? Icons.edit : null),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}
