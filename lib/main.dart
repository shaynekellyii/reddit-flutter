import 'package:flutter/material.dart';
import 'package:readit/model/model.dart';
import 'package:readit/network/network_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Readit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              FutureBuilder<ListingResponse>(
                future: NetworkManager().getTopPosts(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data.toString());
                  } else if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  }
                  return const CircularProgressIndicator();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
