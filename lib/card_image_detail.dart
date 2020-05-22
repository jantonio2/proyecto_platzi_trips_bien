import 'package:flutter/material.dart';

class CardImageDetail extends StatelessWidget{

  final String title;
  final String detail;
  final String pathImage;
  final int steps;

  CardImageDetail(this.title, this.detail,this.pathImage, this.steps);

  @override
  Widget build(BuildContext context) {

    final cardImage = Container(
      height: 230,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pathImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                blurRadius: 16,
                color: Colors.black26,
                offset: Offset(0, 10)
            )
          ]
      ),
    );

    final cardDetail =  Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 45, right: 45, top: 170, bottom: 30),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                blurRadius: 16,
                color: Colors.black26,
                offset: Offset(0, 10)
            )
          ],
          color: Colors.white
      ),
      child: Stack(
        alignment: Alignment(1.0, 2.0),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  detail,
                  style: TextStyle(
                      color: Colors.black45
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "Steps $steps",
                  style: TextStyle(
                    fontSize: 17,
                    color: Color.fromRGBO(232, 166, 90, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          FloatingActionButton(
              onPressed: null,
              mini: true,
              child: Icon(Icons.favorite),
              backgroundColor: Color.fromRGBO(102, 216, 105, 1)
          )
        ],
      ),
    );

    return Container(
      child: Stack(
        children: <Widget>[
          cardImage,
          cardDetail
        ],
      ),
    );
  }
}