import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewTuto extends StatelessWidget {

  String title;
  String asset;

  PageViewTuto({
    @required this.asset,
    @required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 48,
        right: MediaQuery.of(context).size.width * 0.2,
        left: MediaQuery.of(context).size.width * 0.2
      ),
      child: Column(
        children: <Widget>[
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22
            ),
          ),
          Expanded(
            child: SvgPicture.asset(
              asset
            ),
          )
        ],
      )
    );
  }
}