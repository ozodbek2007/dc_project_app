import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class AboutTanaMashqPage extends StatefulWidget {
  const AboutTanaMashqPage({super.key});

  @override
  State<AboutTanaMashqPage> createState() => _AboutTanaMashqPageState();
}

class _AboutTanaMashqPageState extends State<AboutTanaMashqPage> {
  double percent = 0.0;
  int seconds = 60;
  Timer? timer;
  @override
  void initState() {
    super.initState();
    startTimer();
  }
  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }
  void startTimer() {
    const oneSecond = Duration(seconds: 1);
    timer = Timer.periodic(oneSecond, (timer) {
      if (seconds > 0) {
        setState(() {
          percent = (60 - seconds) / 60;
          seconds--;
        });
      } else {
        timer.cancel();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _backIcon(),
        title: const Text("Orqaga qaytish",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:   Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            const Gap(15),
            const Align(alignment: Alignment.topLeft,child: Text("Mashqlar",style: TextStyle(fontSize: 18,color: Color(0xffA54BFF)),)),
           Align(
             alignment: Alignment.topRight,
             child:Container(
               width: 70,
               height: 20,
               decoration: BoxDecoration(
                 color: Color(0xffA54BFF),
                 borderRadius: BorderRadius.only(
                   bottomRight: Radius.circular(10),
                   bottomLeft: Radius.circular(10),
                 ),
               ),
               child: Center(child: Text("Boshlovchi",style: TextStyle(fontSize: 10,color: Colors.white),)),
             ),
           ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/img/img_9.png",width: 100,height: 100,fit: BoxFit.cover,),
                ),
                Gap(10),
                Column(
                  children: [
                    Align(alignment: Alignment.topLeft,child: Text("Push up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:  Color(0xffA54BFF)),)),
                    Gap(5),
                    Text("100 ta yuqoriga ko'taring",style: TextStyle(fontSize: 13,color:  Colors.grey),),
                    Gap(25),
                    LinearPercentIndicator(
                      width: 200,
                      barRadius: Radius.circular(5),
                      animation: true,
                      animationDuration: 100,
                      lineHeight: 16,
                      percent: 0.4,
                      progressColor:  Color(0xffA54BFF),
                      backgroundColor: Color(0xffE5E5EF),
                      trailing: Text("40%"),
                    ),
                  ],
                ),
              ],
            ),const Gap(15),
          Align(
              alignment: Alignment.topRight,
              child:Container(
                width: 70,
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xffA54BFF),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Center(child: Text("Boshlovchi",style: TextStyle(fontSize: 10,color: Colors.white),)),
              ),
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/img/img_10.png",width: 100,height: 100,fit: BoxFit.cover,),
                ),
                Gap(10),
                Column(
                  children: [
                    Align(alignment: Alignment.topLeft,child: Text("Sit up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:  Color(0xffA54BFF)),)),
                    Gap(5),
                    Text("20 ta o'tirib turish",style: TextStyle(fontSize: 13,color:  Colors.grey),),
                    Gap(25),
                    LinearPercentIndicator(
                      width: 200,
                      barRadius: Radius.circular(5),
                      animation: true,
                      animationDuration: 100,
                      lineHeight: 16,
                      percent: 0.7,
                      progressColor:  Color(0xffA54BFF),
                      backgroundColor: Color(0xffE5E5EF),
                      trailing: Text("75%"),
                    ),
                  ],
                ),
              ],
            ),const Gap(15),
            Align(
              alignment: Alignment.topRight,
              child:Container(
                width: 70,
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xffA54BFF),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Center(child: Text("Boshlovchi",style: TextStyle(fontSize: 10,color: Colors.white),)),
              ),
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/img/img_11.png",width: 100,height: 100,fit: BoxFit.cover,),
                ),
                Gap(10),
                Column(
                  children: [
                    Align(alignment: Alignment.topLeft,child: Text("Knee push up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:  Color(0xffA54BFF)),)),
                    Gap(5),
                    Text("20 ta o'tirib turish",style: TextStyle(fontSize: 13,color:  Colors.grey),),
                    Gap(25),
                    LinearPercentIndicator(
                      width: 200,
                      barRadius: Radius.circular(5),
                      animation: true,
                      animationDuration: 100,
                      lineHeight: 16,
                      percent: 1,
                      progressColor:  Color(0xffA54BFF),
                      backgroundColor: Color(0xffE5E5EF),
                      trailing: Text("100%"),
                    ),
                  ],
                ),
              ],
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child:   Container(
            //     width: double.infinity,
            //     height: 30,
            //     child: const ListTile(
            //       leading: Text("Bo'lim",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            //       trailing: Text("1/4",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
            //     ),
            //   ),
            // ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){

                  },
                  child: Text("Boshlash"),
                ),
              ),
            ),
            BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.not_started_outlined),label: ""),
              ],
            ),
          ],
        ),
      ),
    );
  }
  _backIcon(){
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black
      ),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pop();
        },
        child: Icon(CupertinoIcons.back,color: Colors.white,),
      ),
    );
  }
}
