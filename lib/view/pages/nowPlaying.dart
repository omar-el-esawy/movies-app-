import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iv/view/componant/font.dart';
import 'package:iv/view/componant/nowplaying/TimeCard.dart';
import 'package:iv/view/componant/nowplaying/picture%20and%20text.dart';
import 'package:iv/view/pages/checkOut/Reservation.dart';

class NowPlaying extends StatelessWidget {
  NowPlaying({Key? key}) : super(key: key);
  double? height, width;
  List Date = [
    'February',
    'February',
    'February',
    'February',
    'February',
    'February',
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff1E1E1),
      body: Stack(
        children: [
          Container(
            height: height! * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Trailer.png'),
                    fit: BoxFit.cover)),
            child: Center(child: SvgPicture.asset('assets/images/path854.svg')),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 19),
                child: Icon(Icons.arrow_back, color: Colors.white),
              ),
              Column(
                children: [
                  Text('Spiderman No Way Home', style: myFont(21.35)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('PG-13', style: myFont400(14.23)),
                      SizedBox(width: 8),
                      CircleAvatar(radius: 3, backgroundColor: Colors.red),
                      SizedBox(width: 8),
                      Text('2h 28m', style: myFont400(14.23)),
                      SizedBox(width: 8),
                      CircleAvatar(radius: 3, backgroundColor: Colors.red),
                      SizedBox(width: 8),
                      Text('Action | Adventure', style: myFont400(14.23)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/Frame 144.svg'),
                      Text('8.7', style: myFont(14)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Synopsis', style: myFont(15)),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 15),
                          child: Text(
                            "Peter Parker's secret identity is revealed to the entire world. Desperate for help, Peter turns to Doctor Strange to make the world forget that he is Spider-Man. The spell goes horribly wrong and shatters the multiverse, bringing in monstrous villains that could destroy the world.",
                            style: myFont400(12),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Cast&Crew ', style: myFont(15)),
                            Text(
                              'See All',
                              style: myFont400(12),
                            )
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            pictureAndText(
                                'assets/images/Tom.png', 'Tom Holland'),
                            pictureAndText(
                                'assets/images/Zendaya.png', 'Zendaya'),
                            pictureAndText('assets/images/Ben.png', 'Benedict'),
                            pictureAndText(
                                'assets/images/Jacob.png', 'Jacob Batalon'),
                          ],
                        ),
                        SizedBox(height: 25),
                        Text('Select Date', style: myFont(15)),
                      ],
                    ),
                  ),
                  // PageView.builder(
                  //   scrollDirection: Axis.horizontal,
                  //   itemCount: Date.length,
                  //   itemBuilder: (context, index) => TimeCard(
                  //       (index + 20).toString(),
                  //       Date[index],
                  //       index == 2 ? Colors.black : Colors.red),
                  // )
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BasePage()));
                },
                child: Container(
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Text(
                        'Reservation',
                        style: myFont(24),
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
