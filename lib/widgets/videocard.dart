import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/news.dart';
import 'package:sarvali_alumni/screens/newsvideo.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoCard extends StatefulWidget {
  const VideoCard(
      {Key key,
      this.videourl,
      this.mainContext,
      this.newsCategorie,
      this.newsHeading,
      this.onTap,
      this.postedBy,
      this.postedTime})
      : super(key: key);
  final String videourl;
  final String newsHeading;
  final String newsCategorie;
  final Function onTap;
  final String postedBy;
  final String postedTime;
  final BuildContext mainContext;

  @override
  _VideoCardState createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videourl),
      flags: YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: widget.onTap ??
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NewsVideo(
                          videourl: widget.videourl,
                          postedBy: widget.postedBy,
                          postedTime: widget.postedTime,
                          newsHeading: widget.newsHeading,
                        )),
              );
            },
        child: Column(
          children: [
            Stack(
              children: [
                YoutubePlayer(
                  controller: _controller,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    color: Colors.orange.withOpacity(0.9),
                    child: Text(
                      widget.newsCategorie,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.newsHeading,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    widget.postedBy,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.postedTime,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.orange,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
