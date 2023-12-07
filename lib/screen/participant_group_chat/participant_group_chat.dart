import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/custom_text_field/textformfield.dart';

import 'components/message_text.dart';

class ParticipantGroupChat extends StatefulWidget {
  @override
  State<ParticipantGroupChat> createState() => _ParticipantGroupChatState();
}

class _ParticipantGroupChatState extends State<ParticipantGroupChat> {
  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(MySize.size25),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Group Chat',
              style: AppTextStyles.mainHeadingStyle,
            ),
            Container(
              padding: EdgeInsets.all(MySize.size25),
              margin: EdgeInsets.all(MySize.size10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: Border.all(
                  color: AppColors.borderColor,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: MessageText(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MySize.size10, vertical: MySize.size10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                            hintText: 'Enter Your Message',
                            controller: _messageController,
                            suffixIcon: Icons.send,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
