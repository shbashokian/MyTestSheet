import 'package:flutter/material.dart';

class secondPage extends StatelessWidget {
  var instagramID;

  secondPage({required this.instagramID});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Your Instagram ID is: " + instagramID),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Previous Page"))
            ],
          ),
        ),
      ),
    );
  }
}
