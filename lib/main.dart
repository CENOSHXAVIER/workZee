import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WorkZee',
        style: TextStyle(fontFamily: "PassionOne",color: Color(0xFF006421),),
        ),
        centerTitle: true,
      ),
      body: SearchPage(),
    );
  }
}


class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        CardWidget(
          image: 'https://example.com/profile_image.jpg', // Replace with your image URL
          name: 'Mahi',
          gig: 'Catering',
          rating: 4.5,
          place: 'kochi',
        ),
        CardWidget(
          image: 'https://example.com/profile_image2.jpg', // Replace with your image URL
          name: 'Ankitha',
          gig: 'Cleaning',
          rating: 2,
          place: 'kollam',
        ),
        CardWidget(
          image: 'https://example.com/profile_image2.jpg', // Replace with your image URL
          name: 'Janice',
          gig: 'Cleaning',
          rating: 3.5,
          place: 'tvm',
        ),
        CardWidget(
          image: 'https://example.com/profile_image2.jpg', // Replace with your image URL
          name: 'Cenosh',
          gig: 'Cleaning',
          rating: 1,
          place: 'Ekm',
        ),
        CardWidget(
          image: 'https://example.com/profile_image2.jpg', // Replace with your image URL
          name: 'Chinnu',
          gig: 'Cleaning',
          rating: 1.4,
          place: 'kkd',
        ),
        // Add more CardWidgets as needed
      ],
    );
  }
}

class CardWidget extends StatelessWidget {
  final String image;
  final String name;
  final String gig;
  final double rating;
  final String place;

  CardWidget({
    required this.image,
    required this.name,
    required this.gig,
    required this.rating,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      color: Color(0xFFE3FEF5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(image),
                ),
                SizedBox(width: 8.0),
                Text(
                  name,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Color(0xFF006241)),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text('Gig: $gig'),
                ),
                Expanded(
                  flex: 3,
                  child: RatingBar.builder(
                    initialRating: rating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 20,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text('Place: $place'),
          ],
        ),
      ),
    );
  }
}

