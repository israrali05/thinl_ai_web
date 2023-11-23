import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/custom_text_field/textformfield.dart';

class GenerateEventScreen extends StatelessWidget {
  const GenerateEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController EventNameController = TextEditingController();
    final TextEditingController dateController = TextEditingController();
    final TextEditingController TimeController = TextEditingController();
    final TextEditingController languageController = TextEditingController();
    final TextEditingController resultlengthController =
        TextEditingController();
    final TextEditingController voteController = TextEditingController();
    final TextEditingController eventMessage = TextEditingController();

    return Scaffold(
      appBar: const MyAppBar(),
      backgroundColor: Colors.white,
      body: Form(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
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
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.32,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: CustomText(
                                    text: 'Event Name',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 2,
                                    color: AppColors.black)),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            CustomTextFormField(
                                hintText: 'Search',
                                controller: EventNameController)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: CustomText(
                                    text: 'Date',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 2,
                                    color: AppColors.black)),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            CustomTextFormField(
                                hintText: 'Date', controller: dateController)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: CustomText(
                                    text: 'Time',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 2,
                                    color: AppColors.black)),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            CustomTextFormField(
                                hintText: 'Time', controller: TimeController),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.24,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: CustomText(
                                    text: 'Language',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 2,
                                    color: AppColors.black)),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            CustomTextFormField(
                                hintText: 'Search',
                                controller: languageController)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.24,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: CustomText(
                                    text: 'Max Result Length',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 2,
                                    color: AppColors.black)),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            CustomTextFormField(
                                hintText: 'Date',
                                controller: resultlengthController)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.24,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: CustomText(
                                    text: 'Tone of Vote',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 2,
                                    color: AppColors.black)),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            CustomTextFormField(
                                hintText: 'Time', controller: voteController),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                          text: 'Start with the prompt or use examples below',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 2,
                          color: AppColors.black)),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: GrowableTextField(
                      lines: 5,
                      controller: eventMessage,
                      onChanged: (text) {
                        print('Text: $text');
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(AppColors.primary),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 20))),
                        child: CustomText(
                          text: 'Send',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
