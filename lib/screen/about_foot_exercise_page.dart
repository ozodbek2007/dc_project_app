import 'package:dc_project_app/screen/about_tana_mashq_page.dart';
import 'package:dc_project_app/screen/start_of_foot_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AboutFootExercisePage extends StatefulWidget {
  const AboutFootExercisePage({super.key});

  @override
  State<AboutFootExercisePage> createState() => _AboutFootExercisePageState();
}

class _AboutFootExercisePageState extends State<AboutFootExercisePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/img/img_6.png",),
                Column(
                  children: [
                    const Gap(50),
                    Row(
                      children: [
                        const Gap(20),
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: const Icon(Icons.arrow_back_ios),color: Colors.black,),
                        const Gap(80),
                        const Text("Orqaga qaytish",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                      ],
                    ),
                  ],
                ),
              ],
            ),
                  Container(
                    width: double.infinity,
                    height: 400,
                    child: ListView(
                      children: [
                        Padding(padding: EdgeInsets.all(12),
                        child: Column(
                          children: [
                            const Gap(20),
                            const Text("Pastki tanani mashq qilish",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                            const Gap(10),
                            const Center(child: Text("Pastki tanani mashq qilishPastki tanani mashqi",style: TextStyle(fontSize: 15),)), Gap(7),
                            const Center(child: Text("Pastki tanani mashq qilishPastki tanani mashqi pastki ",style: TextStyle(fontSize: 15),)),
                            const Gap(7),
                            const Center(child: Text("Pastki tanani mashq qilishPastki tanani mashqi pastki",style: TextStyle(fontSize: 15),)),
                            const Gap(7),
                            const Center(child: Text("Pastki tanani mashq qilishPastki tanani ",style: TextStyle(fontSize: 15),)),
                            const Gap(15),
                            Container(
                              width: double.infinity,
                              height: 30,
                              child: const ListTile(
                                leading: Text("Bo'lim",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                trailing: Text("1/4",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                              ),
                            ),
                            const Gap(20),

                            Container(
                              //padding: const EdgeInsets.all(5),
                              width: double.infinity,
                              height: 85,
                              decoration: BoxDecoration(
                                color: const Color(0xffA54BFF),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ListTile(
                                leading: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("assets/img/img_8.png",height: 60,width: 90,)),
                                title: const Text("Pastki tanani mashq qilish",style: TextStyle(fontSize: 16,color: Colors.white),),
                                subtitle: const Text("00:30",style: TextStyle(fontSize: 12,color: Colors.white),),
                                trailing: GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> AboutTanaMashqPage()));
                                  },
                                  child: Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.black
                                    ),
                                    child: const Icon(Icons.play_arrow,color: Colors.white,),
                                  ),
                                ),
                              ),
                            ),
                            const Gap(20),
                            Container(
                              //padding: const EdgeInsets.all(5),
                              width: double.infinity,
                              height: 85,
                              decoration: BoxDecoration(
                                color: const Color(0xffA54BFF),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ListTile(
                                leading: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("assets/img/img_8.png",height: 60,width: 90,)),
                                title: const Text("Pastki tanani mashq qilish",style: TextStyle(fontSize: 16,color: Colors.white),),
                                subtitle: const Text("00:30",style: TextStyle(fontSize: 12,color: Colors.white),),
                                trailing: GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> AboutTanaMashqPage()));
                                  },
                                  child: Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.black
                                    ),
                                    child: const Icon(Icons.workspace_premium,color: Colors.white,),
                                  ),
                                ),
                              ),
                            ),
                            const Gap(20),
                            Container(
                              //padding: const EdgeInsets.all(5),
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                color: const Color(0xffA54BFF),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ListTile(
                                leading: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("assets/img/img_8.png",height: 60,width: 90,)),
                                title: const Text("Pastki tanani mashq qilish",style: TextStyle(fontSize: 16,color: Colors.white),),
                                subtitle: const Text("00:30",style: TextStyle(fontSize: 12,color: Colors.white),),
                                trailing: GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> AboutTanaMashqPage()));
                                  },
                                  child: Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.black
                                    ),
                                    child: const Icon(Icons.workspace_premium,color: Colors.white,),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
