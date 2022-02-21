import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
class VenuesItem {
  String img;
  String title;
  String location;
  int numChair;
  int reservedseats;

  VenuesItem(this.img,this.title,this.location, this.numChair,this.reservedseats);
}
 
class VenuesWidget extends StatelessWidget {
   final VenuesItem venuesItem;

  //Function onSideMenuItemClick;
  VenuesWidget(this.venuesItem);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       // Navigator.of(context).pushNamed(sideMenuItem.routeName);
       // onSideMenuItemClick(sideMenuItem);
      },
      child: SafeArea(
        child: Column(
          children: [
            Container(
            margin: const EdgeInsets.only(top:10.0,bottom:3.0),
           height: 150.0,
           width: MediaQuery.of(context).size.width - 55.0,
           decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(5),
          // color: Colors.blue,
           image: DecorationImage(
                    image: ExactAssetImage(venuesItem.img),
            fit: BoxFit.fill
                )
                   ),
           ),
                
             Container (
             height: 24.0,
           width: MediaQuery.of(context).size.width - 85.0,
                padding: const EdgeInsets.all(0.0),
                child: Text(
                  venuesItem.title,
                  style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Courgette'),
                ),
            ),
            Container(
             height: 15.0,
              width: MediaQuery.of(context).size.width - 85.0,
                padding: const EdgeInsets.all(0.0),
                child: Text(venuesItem.location,
                 style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 12 ,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Courgette'),),
            ),
            Container(
             height: 23.0,
              width: MediaQuery.of(context).size.width - 85.0,
                padding: const EdgeInsets.all(0.0),
                child:Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: venuesItem.reservedseats.toString(),
                        style:  TextStyle(
                        color: Colors.orange.shade800,
                        fontSize: 21 ,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Courgette'),
                        children:  <TextSpan>[
                          const TextSpan(text: '/', 
                          style: TextStyle(color: Colors.black,
                          fontSize: 21 ,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Courgette')),
                          TextSpan(text:venuesItem.numChair.toString(),style: const TextStyle(
                            color:Colors.black,
                            fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Image.asset('assets/images/chair.png',
                    color: Colors.black,), 
                    LikeButton(),
          /*size: 10,
          circleColor:
              CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
          bubblesColor: BubblesColor(
            dotPrimaryColor: Color(0xff33b5e5),
            dotSecondaryColor: Color(0xff0099cc),
          ),
          likeBuilder: (bool isLiked) {
            return Icon(
              Icons.home,
              color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
              size: 10,
            );
          },
          likeCount: 665,
          countBuilder: (int count, bool isLiked, String text) {
            var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
            Widget result;
            if (count == 0) {
              result = Text(
                "love",
                style: TextStyle(color: color),
              );
            } else
              result = Text(
                text,
                style: TextStyle(color: color),
              );
            return result;
          },
        ),*/
                  ],
                )
                
            ),
            Container(
             height: 30.0,
              width: MediaQuery.of(context).size.width - 85.0,
                padding: const EdgeInsets.all(0.0),
                child:RichText(
                  text: TextSpan(
                    text: 'Available Seats : ',
                    style: const TextStyle(
                      color:Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 17 ,
                        fontFamily: 'Courgette'),
                    children: <TextSpan>[
                      TextSpan(text: (venuesItem.numChair-venuesItem.reservedseats).toString(), 
                      style:  TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17 ,
                        fontFamily: 'Courgette',
                        color:Colors.orange.shade800)),
                    ],
                  ),
                )
            )
          ],
              ),
      ),
    );
  }
}
