import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/otherprofile.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    this.batch,
    this.imageUrl,
    this.name,
    this.profession,
    Key key,
  }) : super(key: key);
  final String imageUrl;
  final String name;
  final String batch;
  final String profession;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, OtherProfile.id);
      },
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.grey.withOpacity(0.3))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: imageUrl == null
                    ? null
                    : Image(
                        image: AssetImage(imageUrl),
                      ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Batch-$batch',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Profession-$profession',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
