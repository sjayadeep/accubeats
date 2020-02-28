import 'package:accubeats/widgets/icon_button.dart';
import 'package:accubeats/widgets/round_image.dart';
import 'package:flutter/material.dart';
import 'package:accubeats/styles/font_styles.dart';

class HomePageApp extends StatelessWidget {
  final String albumTitle = 'Billie Eilish - everything i wanted';

  final TextEditingController emailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(fontFamily: 'Quicksand'),
      home: new Material(
        child: new Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: const BoxDecoration(color: Color(0xffE9F1FF)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                    Text(
                      'accubeats',
                      style: h1,
                    ),
                    Text(
                      'NOW PLAYING',
                      style: h5,
                    ),
                    NeomorphicRoundImage(
                        'https://s1.r29static.com/bin/entry/bad/720x864,85/2217664/image.webp',
                        200.0),
                    Column(
                      children: <Widget>[
                        Text(
                          albumTitle,
                          textAlign: TextAlign.center,
                          style: h1,
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          'Billie Eilish',
                          style: h4,
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          '03:11',
                          style: h5,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(20)),
                        NeomorphicIconButton(Icons.fast_rewind, 75,
                            Color(0xffE3F0FD), Color(0xffBBCADE)),
                        NeomorphicIconButton(Icons.play_arrow, 100,
                            Color(0xff4D7DFF), Color(0xffDFEBFF)),
                        NeomorphicIconButton(Icons.fast_forward, 75,
                            Color(0xffE3F0FD), Color(0xffBBCADE)),
                        Padding(padding: EdgeInsets.all(20)),
                      ],
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 50)),
                  ],
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(color: Color(0xffDFEBFF)),
                child: new Column(children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(100, 70, 100, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'UP NEXT',
                          style: h5,
                        ),
                        Text(
                          '9 Songs in queue',
                          style: h5,
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: _myListView(context)),
                  Container(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    decoration: const BoxDecoration(color: Color(0xffF2F7FF)),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'ADD SONG',
                          style: h5,
                        ),
                        SizedBox(width: 20),
                        Expanded(
                            child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffE6EEFC),
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(20.0),
                                ),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              hintText: 'Enter Youtube URL',
                              hintStyle: h4),
                        )),
                        SizedBox(width: 20),
                        RaisedButton(
                          onPressed: () => _showToast(context),
                          padding: EdgeInsets.all(20),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0),
                          ),
                          child: const Text(
                            'Add Song',
                            style: h4_white,
                          ),
                          color: Color(0xff4D7DFF),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
  print(emailController.text);
}
}



Widget _myListView(BuildContext context) {

  Widget musicCard = Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
      child: Row(
        children: <Widget>[
          NeomorphicRoundImage(
              'https://lastfm.freetls.fastly.net/i/u/770x0/2ab282b8477149a2da3fa18aefe50b33.jpg',
              70),
          Padding(padding: EdgeInsets.all(20)),
          Column(
            // align the text to the left instead of centered
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Title',
                style: h4,
              ),
              Text(
                'subtitle',
                style: h5,
              ),
            ],
          ),
        ],
      )

      // child:
      );

  return ListView.builder(
    padding: EdgeInsets.fromLTRB(100, 30, 100, 70),
    itemBuilder: (context, index) {
      return musicCard;
    },
  );
}
