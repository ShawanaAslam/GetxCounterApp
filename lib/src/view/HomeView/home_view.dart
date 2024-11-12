import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcounterapp/src/common_widgets/inkwell_ConWidget.dart';
import 'package:getxcounterapp/src/view/HomeView/home_viewController.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int count = 0;

  // for accessing the data members and member function of controller class, we need to craeet a object
  IncrementController obj = Get.put(IncrementController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff5099D3),
          title: Text(
            "Counter App with GetX",
            style: GoogleFonts.roboto(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w800),
          ),
          centerTitle: true),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 68,
            ),
            Obx(
              () => Text(
                "${obj.counter}",
                style: GoogleFonts.roboto(
                    color: Color(0xff5099D3),
                    fontSize: 120,
                    fontWeight: FontWeight.w700),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(width: 50,),
                InkwellConwidget(
                  ontap: () {
                    obj.reset();
                  },
                  hgt: 100,
                  wdt: 100,
                  clr: Color(0xff5099D3),
                  icn: Icons.restart_alt,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: InkwellConwidget(
                    ontap: () {
                      obj.decrement();
                    },
                    hgt: 150,
                    wdt: 100,
                    clr: Color(0xff235E8D),
                    icn: Icons.minimize,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                // button for increment
                //   Padding(
                //     padding: const EdgeInsets.only(bottom: 100),
                //     child: InkwellConwidget(
                //       ontap: () {
                //         count++;

                //         setState(() {});
                //       },
                //       hgt: 200,
                //       wdt: 100,
                //       clr: Color(0xff235E8D),
                //       icn: Icons.add,
                //     ),
                //   ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: InkwellConwidget(
                    ontap: () {
                      obj.increment();
                    },
                    hgt: 200,
                    wdt: 100,
                    clr: Color(0xff235E8D),
                    icn: Icons.add,
                  ),
                ),
              ],
            ),

            Container(
              height: 60,
              width: double.infinity,
              color: Color(0xff235E8D),
              child: Center(
                child: Text(
                  'Developed By Shawana Aslam',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                //Text('Developed by: name'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
