import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getxcounterapp/passwotdtextfield/password-controller.dart';

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
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Obx(() => TextFormField(
                obscureText: obj.isChecked.value,
                decoration: InputDecoration(
                    suffixIcon: 
                    IconButton(
                        onPressed: () {
                          obj.onPressed();
                        },
                        icon: obj.isChecked.value
                            ? Icon(Icons.remove_red_eye)
                            : Icon(Icons.panorama_fish_eye_rounded))),
              ))
        ],
      ),
    );
  }
}
