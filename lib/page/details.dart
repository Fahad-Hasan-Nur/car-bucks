import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sample details page'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('data'),
              Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Card();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
