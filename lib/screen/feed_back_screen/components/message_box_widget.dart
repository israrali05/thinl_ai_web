import 'package:flutter/material.dart';
import 'package:project22/provider/feedback_controller.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/app_images/app_images.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:provider/provider.dart';

class MessageBoxWidget extends StatelessWidget {
  const MessageBoxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Consumer<SpeechProvider>(builder: (context, provider, child) {
      if (!provider.isListening) {
        provider.initializeSpeech();
      }

      return Container(
        height: MySize.size140,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: AppColors.grey.withOpacity(0.3)),
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: MySize.size40),
              child: TextField(
                controller:
                    TextEditingController(text: provider.recognizedText),

                cursorColor: AppColors.secondary,
                style: AppTextStyles.hintStyle,
                maxLines: null, // Allow multiple lines of input
                decoration: InputDecoration(
                  hintText: provider.isListening
                      ? 'Listening....'
                      : 'Enter your Message',
                  hintStyle: AppTextStyles.hintStyle.copyWith(
                      fontSize: MySize.size12,
                      color: AppColors.grey.withOpacity(0.5)),
                  border: InputBorder.none,
                ),
              ),
            ),
            Positioned(
              top: 14,
              left: 10,
              child: GestureDetector(
                onTap: () {
                  provider.isListening
                      ? provider.stopListening()
                      : provider.startListening();
                },
                child: Image.asset(
                  AppImages.feedBackmMicrophonepng,
                  height: MySize.size22,
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
