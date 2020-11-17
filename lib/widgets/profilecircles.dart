import 'package:flutter/material.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

class ProfilesCircle extends StatelessWidget {
  const ProfilesCircle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            RowSuper(
              innerDistance: -20,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.blue,
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.blue,
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.blue,
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.red,
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                radius: 30.0,
                child: Text(
                  '+34 more',
                  style: TextStyle(fontSize: 10),
                ),
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
