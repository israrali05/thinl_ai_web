
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/custom_text_field/textformfield.dart';


class GenerateEventScreen2 extends StatefulWidget {
   const GenerateEventScreen2({super.key,});

  @override
  State<GenerateEventScreen2> createState() => _GenerateEventScreen2State();
}

class _GenerateEventScreen2State extends State<GenerateEventScreen2> {
  final TextEditingController EventNameController = TextEditingController();

  final TextEditingController dateController = TextEditingController();

  final TextEditingController TimeController = TextEditingController();

  final TextEditingController languageController = TextEditingController();

  final TextEditingController resultlengthController = TextEditingController();

  final TextEditingController voteController = TextEditingController();

  final TextEditingController eventMessage = TextEditingController();

  final TextEditingController sendMessage = TextEditingController();

  List<String> messages = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Form(
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.031),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                     Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        text: 'Generate Event Template',
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Material(
                          color: Colors.white,
                          elevation: 2,
                          shadowColor: Colors.black,
                          borderOnForeground: true,
                          surfaceTintColor: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          child: Padding(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                            child: Column(
                              children: [
                                _buildFormField(context, 'Event Name', 'Search', EventNameController),
                                _buildFormField(context, 'Date', 'Date', dateController),
                                _buildFormField(context, 'Time', 'Time', TimeController),
                                _buildFormField(context, 'Language', 'Search', languageController),
                                _buildFormField(context, 'Max Result Length', 'Date', resultlengthController),
                                _buildFormField(context, 'Tone of Vote', 'Time', voteController),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.019,),
                                ElevatedButton(onPressed: () {

                                },
                                  style: ButtonStyle(
                                    padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06,vertical: MediaQuery.of(context).size.height * 0.03)),
                                    backgroundColor: MaterialStatePropertyAll(AppColors.primary)
                                  ),
                                  child: CustomText(
                                  text: 'Generate',
                                  fontSize: MediaQuery.of(context).size.height * 0.026,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 2,
                                  color: Colors.white,
                                ),)


                              ],
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.white,
                          elevation: 2,
                          shadowColor: Colors.black,
                          borderOnForeground: true,
                          surfaceTintColor: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.031, vertical: MediaQuery.of(context).size.width * 0.017),
                            child: Column(
                              children: [


                                Padding(
                                  padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height *.01),
                                  child: SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.438,
                                      height: MediaQuery.of(context).size.height * 0.864,
                                    child: Material(
                                      elevation: .3,
                                      color: Colors.white,
                                      child: ListView.builder(
                                        itemCount: messages.length,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding:  const EdgeInsets.symmetric(vertical: 10),
                                            child: Text(messages[index]),
                                          );
                                        },
                                    ),
                                    ),
                                  ),
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width * 0.438,
                                    child: CustomTextFormField(
                                        suffixIcon: Icons.send,
                                        onPressed: () {
                                          if (sendMessage.text.isNotEmpty) {
                                            setState(() {
                                              messages.add(sendMessage.text);
                                              sendMessage.clear();
                                            });
                                          }
                                        },
                                        hintText: "Enter Your Message", controller: sendMessage)),


                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildFormField(BuildContext context, String label, String text, TextEditingController controller) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.18,
    child: Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CustomText(
            text: label,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 2,
            color: AppColors.black,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
        CustomTextFormField(hintText: text, controller: controller),
        SizedBox(height: MediaQuery.of(context).size.height * 0.029,),

      ],
    ),
  );
}
