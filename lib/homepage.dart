import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/widget/travel_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        )
      ]),
      body: Column(children: [
        Text(
          'Travel Blog',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        Expanded(
          flex: 2,
          child: TravelInfo(),
        ),
        Row(children: [
          Text('Most Popular'),
          Spacer(),
          Text('All'),
        ]),
        Expanded(flex: 2, child: Placeholder()),
      ]),
    );
  }
}
