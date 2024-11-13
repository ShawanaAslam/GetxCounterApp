import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getxcounterapp/passwotdtextfield/password-controller.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordText extends StatefulWidget {
  const PasswordText({super.key});

  @override
  State<PasswordText> createState() => _PasswordTextState();
}

class _PasswordTextState extends State<PasswordText> {
  @override
  Widget build(BuildContext context) {
    TextPasswordController obj = Get.put(TextPasswordController());
    return Scaffold(

      appBar: AppBar(
          backgroundColor: Color(0xff235E8D),
          title: Text(
            " PaswordTextFormField with GetX",
            style: GoogleFonts.roboto(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),
          ),
          centerTitle: true),
      body: Center(
        child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        // gradient: LinearGradient(
        //   // colors: [Colors.blueAccent.shade100, Colors.white //(0xFFFEB47B)
        //   // ], // Adjust colors here
        //
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,)
     ),
          child: SingleChildScrollView(
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                 height: 200,
                ),
                Obx(() => Padding(
                  padding: const EdgeInsets.only(right: 30,left: 30),
                  child: TextFormField(
                        obscureText: obj.isChecked.value,
                        decoration: InputDecoration(
                            suffixIcon:
                            IconButton(
                                onPressed: () {
                                  obj.onPressed();
                                },
                                icon: obj.isChecked.value
                                    ? Icon(Icons.remove_red_eye)
                                    : Icon(Icons.remove_red_eye_outlined)),
                            //  fillColor: widget.clr,
                            //filled: true,
                            hintText: 'Enter Pasword',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                        ),
                ),
                ),
                SizedBox(height: 284,),
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
        ),
      ),
    );
  }
}
