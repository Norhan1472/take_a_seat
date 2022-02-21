import 'package:flutter/material.dart';
import 'package:take_a_seat/Venues/VenuesWidget.dart';

//import '/VenuesWidget.dart';

class Venues extends StatefulWidget{
  const Venues({Key? key}) : super(key: key);

  @override
  _VenuesState createState() => _VenuesState();
}

class _VenuesState extends State<Venues> {
  
  @override
  Widget build(BuildContext context) {
  List<VenuesItem> VenuesList = [
      VenuesItem("assets/images/starbucks.jpg","Starbucks Nile City boat", "Zamalek, Cairo Governorate",20,18),
      VenuesItem("assets/images/starbucks.jpg","Starbucks Nile City boat", "Zamalek, Cairo Governorate",20,18),
      VenuesItem("assets/images/starbucks.jpg","Starbucks Nile City boat", "Zamalek, Cairo Governorate",20,18),
      VenuesItem("assets/images/starbucks.jpg","Starbucks Nile City boat", "Zamalek, Cairo Governorate",20,18),
    ];
    return Scaffold(
      body:Column
      (
        children:[
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return VenuesWidget(VenuesList[index]);
              },
              itemCount: VenuesList.length,
            ),
          )
        ]
      )
    );
 }
}

