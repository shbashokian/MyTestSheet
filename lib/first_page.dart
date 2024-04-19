import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_test_sheet/second_page.dart';

class firstPage extends StatelessWidget {
  TextEditingController InstagramIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: InstagramIdController,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.orange)),
                    hintText: "Instagram ID",
                    hintTextDirection: TextDirection.ltr,
                    labelText: "User ID",
                    prefixIcon: Icon(Icons.supervised_user_circle),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () => {
                        if (InstagramIdController.text.isEmpty)
                          {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text('Please Enter Your ID'),
                              backgroundColor: Colors.deepPurpleAccent,
                            ))
                          }
                        else
                          {
                            //New Page With Replacement
                            Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => secondPage(
                                          instagramID: InstagramIdController.text,
                                        )))
                          }
                      },
                  child: Text("Next Page"))
            ],

            // New Page Without Replacement
            // Navigator.push(context, MaterialPageRoute(builder: (context) => secondPage())), child: Text("Next Page"))],
          ),
        ),
      ),
    );
  }
}
