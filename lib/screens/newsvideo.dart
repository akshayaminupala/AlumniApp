import 'package:flutter/material.dart';
import 'package:sarvali_alumni/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class NewsVideo extends StatefulWidget {
  static const String id = 'newscard';
  final String postedBy;
  final String postedTime;
  final String newsHeading;
  final String videourl;
  const NewsVideo(
      {Key key,
      this.postedBy,
      this.postedTime,
      this.newsHeading,
      this.videourl})
      : super(key: key);
  @override
  _NewsVideoState createState() => _NewsVideoState();
}

class _NewsVideoState extends State<NewsVideo> {
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image(
            height: 35,
            image: AssetImage('images/sarvali.jpeg'),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.newsHeading,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
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
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    YoutubePlayer(
                      controller: _controller,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(contentlong),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
