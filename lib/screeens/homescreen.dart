import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double rateZero = 0;
  double rateOne = 0;
  double rateTwo = 0;
  double rateThree = 0;
  double rateFour = 0;
  double rateFive = 0;
  double rateSix = 0;
  double rateSeven = 0;
  double rateEight = 90;

  late String asset;
  late double top;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {


            //only if scroll update notification is triggered
            setState(() {
              rateEight -= v.scrollDelta! / 1;
              rateSeven -= v.scrollDelta !/ 1.5;
              rateSix -= (v.scrollDelta! / 2);
              rateFive -= v.scrollDelta! / 2.5;
              rateFour -= v.scrollDelta! / 3;
              rateThree -= v.scrollDelta! / 3.5;
              rateTwo -= v.scrollDelta! / 4;
              rateOne -= v.scrollDelta! / 4.5;
              rateZero -= v.scrollDelta! / 5;
            });
          }
          return true;
        },
        child: Stack(
          children: <Widget>[
            ParallaxWidget(top: rateZero, asset: "parallax0"),
            ParallaxWidget(top: rateOne, asset: "parallax1"),
            ParallaxWidget(top: rateTwo, asset: "parallax2"),
            ParallaxWidget(top: rateThree, asset: "parallax3"),
            ParallaxWidget(top: rateFour, asset: "parallax4"),
            ParallaxWidget(top: rateFive, asset: "parallax5"),
            ParallaxWidget(top: rateSix, asset: "parallax6"),
            ParallaxWidget(top: rateSeven, asset: "parallax7"),
            ParallaxWidget(top: rateEight, asset: "parallax8"),
            ListView(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                ),
                Container(
                  color: const Color(0xff210002),
                  // height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  padding:const  EdgeInsets.only(top: 70),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       const  SizedBox(height: 100,),

                        Text(
                          "AVAILABLE NOW FOR \$ 19.99",
                          style: TextStyle(
                              fontSize: 51,

                              letterSpacing: 2.8,
                              color:Theme.of(context).primaryColor),
                        ),
                       const  SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 300,
                              color: Theme.of(context).primaryColor,
                              alignment: Alignment.center,
                              child: const Text("WINDOWS MAC LINUS",style: TextStyle(color:  Color(0xff210002),fontWeight: FontWeight.bold,fontSize: 17),)
                              ,
                            ),
                          const   SizedBox(width: 50,),
                            Container(

                              height: 30,
                              width: 300,
                              color: Theme.of(context).primaryColor,
                              alignment: Alignment.center,
                                child: const Text("NINTENDO SWITCH",style: TextStyle(color:  Color(0xff210002),fontWeight: FontWeight.bold,fontSize: 17),),
                            )
                          ],
                        ),
                        const  SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 300,
                              color: Theme.of(context).primaryColor,
                              alignment: Alignment.center,
                              child: const Text("PLAYSTATION-4",style: TextStyle(color:  Color(0xff210002),fontWeight: FontWeight.bold,fontSize: 17),)
                              ,
                            ),
                            const   SizedBox(width: 50,),
                            Container(

                              height: 30,
                              width: 300,
                              color: Theme.of(context).primaryColor,
                              alignment: Alignment.center,
                              child: const Text("XBOX ONE",style: TextStyle(color:  Color(0xff210002),fontWeight: FontWeight.bold,fontSize: 17),),
                            )
                          ],
                        ),
                        const SizedBox(height: 60,),
                        AspectRatio(
                          aspectRatio: 3,
                            child: Image.asset("assets/youtube.png")),
                        const SizedBox(height: 100,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 165,
                              width: 290,

                              alignment: Alignment.center,
                              child: Image.asset("assets/f1.jpg",fit: BoxFit.cover,)
                              ,
                            ),
                            const   SizedBox(width: 50,),
                            Container(
                              height: 165,
                              width: 290,

                              alignment: Alignment.center,
                              child: Image.asset("assets/f2.jpg",fit: BoxFit.cover,)
                              ,
                            ),
                          ],
                        ),
                        const SizedBox(height: 60,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 165,
                              width: 290,

                              alignment: Alignment.center,
                              child: Image.asset("assets/f3.jpg",fit: BoxFit.cover,)
                              ,
                            ),
                            const   SizedBox(width: 50,),
                            Container(
                              height: 165,
                              width: 290,

                              alignment: Alignment.center,
                              child: Image.asset("assets/f4.jpg",fit: BoxFit.cover,)
                              ,
                            ),
                          ],
                        ),
                        const SizedBox(height: 100,),
                     const    Text(
                          "Parallax In",
                          style: TextStyle(
                              fontSize: 30,

                              letterSpacing: 1.8,
                              color: Color(0xffffaf00)),
                        ),
                      const   Text(
                          "Flutter",
                          style: TextStyle(
                              fontSize: 51,

                              letterSpacing: 1.8,
                              color: Color(0xffffaf00)),
                        ),
                      const   SizedBox(
                          height: 20,
                        ),
                       const  SizedBox(
                          width: 190,
                          child: Divider(
                            height: 1,
                            color: Color(0xffffaf00),
                          ),
                        ),
                      const   SizedBox(
                          height: 20,
                        ),
                    const     Text(
                          "Developed  By",
                          style: TextStyle(
                            fontSize: 15,

                            letterSpacing: 1.3,
                            color: Color(0xffffaf00),
                          ),
                        ),
                       const  Text(
                          "dev_73arner(Mirza)",
                          style: TextStyle(
                            fontSize: 20,

                            letterSpacing: 1.8,
                            color: Color(0xffffaf00),
                          ),
                        ),
                      const   SizedBox(
                          height: 50,
                        )

                      

                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ParallaxWidget extends StatelessWidget {
  const ParallaxWidget({

    required this.top,
    required this.asset,
  });

  final double top;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -45,
      top: top,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width+50,
        child: Image.asset("assets/$asset.png", fit: BoxFit.cover),
      ),
    );
  }
}