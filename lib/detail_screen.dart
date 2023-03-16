import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:state_management/models/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    List<Widget> listgalery = [
      for (var i = 0; i < place.imageAsset.length; i++)
        SafeArea(
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(place.imageAsset[i]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              Image.asset(place.imageMain),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Lobster'
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        Text(place.open)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.alarm),
                        Text(place.time)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        Text(place.tiket)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    place.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Oxygen'
                    ),
                  ),
              ),
              Container(
                height: 300,
                child: CarouselSlider(items: listgalery, options: CarouselOptions(enlargeCenterPage: true)),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}