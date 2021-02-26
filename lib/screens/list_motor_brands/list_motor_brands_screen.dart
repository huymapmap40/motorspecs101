import 'package:flutter/material.dart';


class ListMotorBrandsScreen extends StatefulWidget {
  const ListMotorBrandsScreen({Key key}): super(key: key);

  @override
  _ListMotorBrandsState createState() => _ListMotorBrandsState();
}

class _ListMotorBrandsState extends State<ListMotorBrandsScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All motorcycle brands")
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextField(
              onSubmitted: (valueText) {},
              maxLength: 50,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                icon: Icon(Icons.search),
                hintText: "Find some brand you like ...",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8.0)))
              ),
            ),
          ],
        ),
      )
    );
  }
}
