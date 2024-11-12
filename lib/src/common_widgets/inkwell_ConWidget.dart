import 'package:flutter/material.dart';

class InkwellConwidget extends StatelessWidget {
  double hgt;
  double wdt;
  Color clr;
  IconData icn;
  VoidCallback ontap;
   InkwellConwidget({
     super.key,required this.hgt,required this.wdt,
   required this.clr,required this.ontap,required this.icn});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: ontap ,
      child: Container(
        height: hgt,
        width: wdt,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:clr
        ),
        child: Icon(icn,color: Colors.white,size: 40,),
      ),
    );
  }
}
