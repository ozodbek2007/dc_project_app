import 'package:dc_project_app/screen/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '_about_loosing_fat_page.dart';
import 'about_foot_exercise_page.dart';
import 'about_lung_exercise_page.dart';
import 'about_plank_page.dart';
import 'about_wrists_page.dart';
import 'all_exercises_page.dart';

class LessonsPage extends StatefulWidget {
  const LessonsPage({super.key});

  @override
  State<LessonsPage> createState() => _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "O'quv\nDarsliklar",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        ),
        actions: [
          _profile(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(15),
             Stack(
               children: [
                 ClipRRect(
                   borderRadius: BorderRadius.circular(20),
                   child:Image.asset("assets/img/mashq_woman.jpg"),
                 ),
                 Column(
                   children: [
                     const Gap(20),
                     const Row(
                       children: [
                         Gap(15),
                         Text("Eng yaxshi\n mashqlar",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                       ],
                     ),
                     const Gap(100),
                     Row(
                       children: [
                         const Gap(20),
                         TextButton(onPressed: (){
                           Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const AllExercisesPage()));
                         }, child: const Text("Hammasi >",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xffA54BFF)),))
                       ],
                     ),
                   ],
                 ),
               ],
             ),
              const Gap(20),
              const Align(alignment:Alignment.topLeft,child: Text("Tez qizib olish uchun",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
              const Gap(15),
              Container(
                width: double.infinity,
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const AboutFootExercisePage()));
                      },
                      child: Container(
                        width: 250,
                        height: 90,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                child: ClipRRect(borderRadius:BorderRadius.circular(12),child: Image.asset("assets/img/img.png")),
                              ),
                              title: const Text("Oyoq mashqlar",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              subtitle: const Text("10 minut\nBoshlovchi"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const AboutLungExercisePage()));
                      },
                      child: Container(
                        width: 250,
                        height: 80,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset("assets/img/img_1.png")),
                              ),
                              title: const Text("Orqa o'pkalar uchun",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              subtitle: const Text("5 minut\nBoshlovchi"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Align(alignment:Alignment.topLeft,child: Text("Siz uchun!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
              const Gap(15),
              Container(
                width: double.infinity,
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const AboutLoosingFatPage()));
                      },
                      child: Container(
                        width: 250,
                        height: 90,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                child: ClipRRect(borderRadius:BorderRadius.circular(12),child: Image.asset("assets/img/img_2.png")),
                              ),
                              title: const Text("Yog'ni yo'qotish",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              subtitle: const Text("10 minut\nBoshlovchi"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const AboutLoosingFatPage()));
                      },
                      child: Container(
                        width: 250,
                        height: 80,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset("assets/img/img_3.png")),
                              ),
                              title: const Text("Yog'ni yo'qotish",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              subtitle: const Text("10 minut\nBoshlovchi"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const AboutPlankPage()));
                      },
                      child: Container(
                        width: 250,
                        height: 90,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                child: ClipRRect(borderRadius:BorderRadius.circular(12),child: Image.asset("assets/img/img_4.png")),
                              ),
                              title: const Text("Plank",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              subtitle: const Text("5 min\nExpert"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const AboutWristsPage()));
                      },
                      child: Container(
                        width: 300,
                        height: 80,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset("assets/img/img_5.png")),
                              ),
                              title: const Text("Kattaroq bilaklar",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              subtitle: const Text("20 min\nExpert"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Align(alignment:Alignment.topLeft,child: Text("Hamma mashqlar",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
              const Gap(15),  Container(
                width: double.infinity,
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const AboutFootExercisePage()));
                      },
                      child: Container(
                        width: 250,
                        height: 90,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                child: ClipRRect(borderRadius:BorderRadius.circular(12),child: Image.asset("assets/img/img.png")),
                              ),
                              title: const Text("Oyoq mashqlar",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              subtitle: const Text("10 minut\nBoshlovchi"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const AboutLungExercisePage()));
                      },
                      child: Container(
                        width: 250,
                        height: 80,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset("assets/img/img_1.png")),
                              ),
                              title: const Text("Orqa o'pkalar uchun",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              subtitle: const Text("5 minut\nBoshlovchi"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const AboutLoosingFatPage()));
                      },
                      child: Container(
                        width: 250,
                        height: 90,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                child: ClipRRect(borderRadius:BorderRadius.circular(12),child: Image.asset("assets/img/img_2.png")),
                              ),
                              title: const Text("Yog'ni yo'qotish",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              subtitle: const Text("10 minut\nBoshlovchi"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const AboutLoosingFatPage()));
                      },
                      child: Container(
                        width: 250,
                        height: 80,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset("assets/img/img_3.png")),
                              ),
                              title: const Text("Yog'ni yo'qotish",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              subtitle: const Text("10 minut\nBoshlovchi"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const AboutPlankPage()));
                      },
                      child: Container(
                        width: 250,
                        height: 90,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                child: ClipRRect(borderRadius:BorderRadius.circular(12),child: Image.asset("assets/img/img_4.png")),
                              ),
                              title: const Text("Plank",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              subtitle: const Text("5 min\nExpert"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const AboutWristsPage()));
                      },
                      child: Container(
                        width: 300,
                        height: 80,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset("assets/img/img_5.png")),
                              ),
                              title: const Text("Kattaroq bilaklar",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              subtitle: const Text("20 min\nExpert"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: GNav(
          backgroundColor: Colors.black,
          color: const Color(0xffA54BFF),
          padding: const EdgeInsets.all(8),
          tabBorderRadius: 25,
          onTabChange: (index){
            print(index);
          },
          gap: 8,
          tabs: const [
            GButton(icon: Icons.directions_bike_outlined,text: "Mashqlar",textStyle: TextStyle(color:Colors.white,),backgroundColor:Color(0xffA54BFF) ,),
            GButton(icon: Icons.fastfood,text: "Dieta",textStyle: TextStyle(color:Colors.white,),backgroundColor:Color(0xffA54BFF) ,),
            GButton(icon: CupertinoIcons.home,text: "Bosh sahifa",textStyle: TextStyle(color:Colors.white,),backgroundColor:Color(0xffA54BFF) ,),
            GButton(icon: CupertinoIcons.chart_bar_square,text: "Statistika",textStyle: TextStyle(color:Colors.white,),backgroundColor:Color(0xffA54BFF) ,),
          ],
        ),
      ),
    );
  }
  _profile(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 40,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xffFFCE80),
          borderRadius: BorderRadius.circular(10),
        ),
        child: GestureDetector(onTap:(){
          Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>const ProfilePage()));
        },child: Image.asset("assets/img/profile.png")),
      ),
    );
  }
}
