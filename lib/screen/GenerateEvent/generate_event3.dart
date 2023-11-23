import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/custom_text_field/textformfield.dart';


class GenerateEvent3 extends StatefulWidget {
   const GenerateEvent3({super.key});

  @override
  State<GenerateEvent3> createState() => _GenerateEvent3State();
}

class _GenerateEvent3State extends State<GenerateEvent3> {
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.031),
        child: Container(
          constraints: const BoxConstraints(
            minWidth: double.infinity,
            minHeight: double.infinity
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                GrowableTextField(
                  fontsize: 12,
                  lines: 20,
                  onChanged: (text){},
                  controller: messageController,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height *0.04,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                      onPressed: () {  },
                      style:  const ButtonStyle(backgroundColor: MaterialStatePropertyAll(AppColors.primary),
                          padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 40, vertical: 20))
                      ),
                      child:  CustomText(
                        text: 'Send',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
