
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project22/screen/drawer/drawer.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_images/app_images.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/custom_text_form_field/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();
  bool isChecked = false;
  bool isChecked1 = false;

  bool isLoginSelected = true;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    bool isWeb = screenWidth > 600;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 400,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: isWeb ? screenHeight * 0.1 : screenHeight * 0.05,
                ),
                Image.asset(
                  AppImages.think,
                  height: isWeb ? screenHeight * 0.09 : screenHeight * 0.09,
                ),
                SizedBox(
                  height: isWeb ? screenHeight * 0.04 : screenHeight * 0.02,
                ),
                Container(
                  width: 542,
                  padding: EdgeInsets.all(
                      isWeb ? screenWidth * 0.02 : screenWidth * 0.02),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.borderBlueColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            // width: MediaQuery.of(context).size.width*0.15,
                            child: TextButton.icon(
                              onPressed: () {
                                setState(() {
                                  isLoginSelected = true;
                                });
                              },
                              icon: Image.asset(
                                AppImages.loginProfile,
                                width: screenWidth * 0.03,
                                height: screenHeight * 0.03,
                                color: isLoginSelected == true
                                    ? Colors.white
                                    : AppColors.textLiteBlueColor,
                              ),
                              label: CustomText(
                                text: "Log In",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: isLoginSelected
                                      ? Colors.white
                                      : AppColors.textLiteBlueColor,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: isLoginSelected
                                    ? AppColors.textLiteBlueColor
                                    : Colors.white,
                                padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.04,
                                  vertical: screenHeight * 0.02,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: AppColors.textLiteBlueColor,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.02,
                          ),
                          Expanded(
                            child: TextButton.icon(
                              onPressed: () {
                                setState(() {
                                  isLoginSelected = false;
                                });
                              },
                              icon: Image.asset(
                                AppImages.loginProfile,
                                // width: screenWidth * 0.03,
                                // height: screenHeight * 0.03,
                                // width: 20,
                                height: 20,
                                color: isLoginSelected == true
                                    ? AppColors.textLiteBlueColor
                                    : AppColors.textWhiteColor,
                              ),
                              label: CustomText(
                                text: "Sign Up",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: isLoginSelected
                                      ? AppColors.textLiteBlueColor
                                      : Colors.white,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: isLoginSelected
                                    ? Colors.white
                                    : AppColors.textLiteBlueColor,
                                padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.04,
                                  vertical: screenHeight * 0.02,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: AppColors.textLiteBlueColor,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Visibility(
                        visible: isLoginSelected,
                        child: Container(
                          padding: EdgeInsets.zero,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextField(
                                controller: emailController,
                                hintText: "Email",
                                pIcon: Image.asset(
                                  AppImages.emailLogin,
                                  scale: screenWidth * 0.02,
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              CustomTextField(
                                obscureText: true,
                                controller: usernameController,
                                hintText: "Password",
                                pIcon: Image.asset(
                                  AppImages.profileLogin,
                                  scale: screenWidth * 0.02,
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              CustomText(
                                text: "Forget Password",
                                style: TextStyle(
                                  color: AppColors.textBlueColor,
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.03,
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: isChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                  CustomText(
                                    text: "Remember me",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.textGreyColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CustomDrawer()),
                                  );
                                },
                                icon: Image.asset(
                                  AppImages.login,
                                  scale: screenWidth * 0.02,
                                ),
                                label: CustomText(
                                  text: "Log In",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(
                                    screenWidth,
                                    screenHeight * 0.048,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    text: "Don't have an account?",
                                    style: TextStyle(
                                      color: AppColors.textGreyColor,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isLoginSelected = !isLoginSelected;
                                      });
                                    },
                                    child: CustomText(
                                      text: " Sign Up",
                                      style: TextStyle(
                                        color: AppColors.textWhiteColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: !isLoginSelected,
                        child: Container(
                          padding: EdgeInsets.zero,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextField(
                                controller: emailController,
                                hintText: "Email",
                                pIcon: Image.asset(
                                  AppImages.emailLogin,
                                  scale: screenWidth * 0.02,
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              CustomTextField(
                                controller: usernameController,
                                hintText: "Username",
                                pIcon: Image.asset(
                                  AppImages.profileLogin,
                                  scale: screenWidth * 0.02,
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              CustomTextField(
                                obscureText: true,
                                controller: passwordController,
                                hintText: "Password",
                                pIcon: Image.asset(
                                  AppImages.passwordLogin,
                                  scale: screenWidth * 0.02,
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              CustomTextField(
                                obscureText: true,
                                controller: cPasswordController,
                                hintText: "Confirm password",
                                pIcon: Image.asset(
                                  AppImages.confirmPassword,
                                  scale: screenWidth * 0.02,
                                ),
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: isChecked1,
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked1 = value!;
                                      });
                                    },
                                  ),
                                  CustomText(
                                    text: "Accept ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  CustomText(
                                    text: "Terms ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  CustomText(
                                    text: "& ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  CustomText(
                                    text: "Condition",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight * 0.03,
                              ),
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: Image.asset(
                                  AppImages.addUser,
                                  scale: screenWidth * 0.02,
                                ),
                                label: CustomText(
                                  text: "Sign Up",
                                  // style:AppTextStyles.btnStyle,
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(
                                    screenWidth,
                                    screenHeight * 0.048,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
