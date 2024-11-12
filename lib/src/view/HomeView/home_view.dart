import 'package:flutter/material.dart';
import 'package:getxcounterapp/src/common_widgets/inkwell_ConWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   appBar:AppBar(
      //     backgroundColor:Color(0xff5099D3) ,
      //    title:
      //    Text("Counter App",style:GoogleFonts.roboto(color:Colors.white ,
      //         fontSize: 25,fontWeight: FontWeight.w800
      //    ),
      //    ),
      // centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 95,),
              Text("$count",style:GoogleFonts.roboto(color:Color(0xff5099D3) ,
              fontSize: 120,fontWeight: FontWeight.w700),),
              SizedBox(height: 68,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             // SizedBox(width: 50,),
              InkwellConwidget(
          ontap: (){
          
            count = 0;
            setState(() {
          
            });
          },
          hgt: 100, wdt: 100, clr: Color(0xff5099D3),
              icn: Icons.restart_alt,),
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(bottom:50),
                child: InkwellConwidget(
            ontap: (){
              if(count>0){
                count--;
              }
              setState(() {
              });
            },
            hgt: 150, wdt: 100, clr: Color(0xff235E8D),
                icn: Icons.minimize,),
              ),
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: InkwellConwidget(
            ontap: (){
          
                count++;
          
              setState(() {
              });
            },
            hgt: 200, wdt: 100, clr: Color(0xff235E8D),
                icn: Icons.add,),
              ),
            ],
          )
            ],
          ),
        ),
      ),
    );
  }
}
