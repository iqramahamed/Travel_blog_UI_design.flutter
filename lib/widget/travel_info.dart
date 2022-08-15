import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/model/travel.dart';

class TravelInfo extends StatefulWidget {
  // const TravelInfo({Key? key}) : super(key: key);
  final travel_list = Travel.generatedTravelBlog();
  @override
  State<TravelInfo> createState() => _TravelInfoState();
}

class _TravelInfoState extends State<TravelInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: widget.travel_list.length,
        itemBuilder: (context, index) {
          var travel = widget.travel_list[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset(
                      travel.img,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 40,
                    left: 16,
                    child: Column(
                      children: [
                        Text(
                          travel.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              wordSpacing: 1,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          travel.address,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              wordSpacing: 1,
                              fontWeight: FontWeight.w900),
                        )
                      ],
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}
