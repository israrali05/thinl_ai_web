import 'package:flutter/material.dart';
import 'package:project22/screen/event_day_screen/components/chatting_box.dart';
import 'package:project22/screen/event_day_screen/components/ideas_screen.dart';
import 'package:project22/screen/event_day_screen/components/presentation_screen.dart';
import 'package:project22/screen/event_day_screen/components/video_player.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/custom_text/customtext.dart';

class DafaultContainerWidget extends StatefulWidget {
  const DafaultContainerWidget({
    super.key,
  });

  @override
  State<DafaultContainerWidget> createState() => _DafaultContainerWidgetState();
}

class _DafaultContainerWidgetState extends State<DafaultContainerWidget> {
  late FocusNode _focusNode;
  bool isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> buttonTitles = [
      'Revert',
      'Improve',
      'Enchance',
    ];
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: VideoPlayerWidget()),
              Container(
                // height: 200,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFDEDCDC)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                padding: EdgeInsets.all(5),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Comment",
                        style: AppTextStyles.mainHeadingStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Commets(),
                    ]),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFDEDCDC)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        child: CustomText(
                          textAlign: TextAlign.start,
                          text: "Chatting",
                          style: AppTextStyles.headingTwo
                            ..copyWith(fontSize: 16),
                        ),
                      ),
                      ChattingBox(),
                    ],
                  )),
              SizedBox(
                width: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFDEDCDC)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Ideas",
                      style: AppTextStyles.mainHeadingStyle,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: IdeasWidget(
                        buttonTitles: buttonTitles,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          // SizedBox(
          //   height: 10.h,
          // ),
          // SizedBox(
          //   height: 35.h,
          //   child: TextField(
          //     focusNode: _focusNode,
          //     style: AppTextStyles.paragraphStyle,
          //     cursorHeight: 20.h,
          //     cursorWidth: 1,
          //     cursorColor: AppColors.primaryColor,
          //     decoration: InputDecoration(
          //       hintText: 'Enter Your Commects',
          //       hintStyle: AppTextStyles.btnTextStyle.copyWith(
          //           color: AppColors.greyParagraphColor.withOpacity(0.5)),
          //       contentPadding: EdgeInsets.only(left: 10.r),
          //       prefixIcon: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Image.asset(AppImages.eventDaymessagepng),
          //       ),
          //       suffixIcon: isFocused
          //           ? Padding(
          //               padding: EdgeInsets.all(8.0.w),
          //               child: Image.asset(
          //                 AppImages.eventDayMessageSenderPng,
          //                 height: 10,
          //               ),
          //             )
          //           : Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Row(
          //                 mainAxisSize: MainAxisSize.min,
          //                 children: [
          //                   Image.asset(
          //                     AppImages.feedBackmMicrophonepng,
          //                     height: 30,
          //                   ),
          //                   SizedBox(width: 10.w),
          //                   Image.asset(
          //                     AppImages.eventDayCamera,
          //                     height: 30,
          //                   ),
          //                 ],
          //               ),
          //             ),
          //       focusedBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(5.0.r),
          //         borderSide:
          //             BorderSide(color: AppColors.primaryColor.withOpacity(0.5)),
          //       ),
          //       enabledBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(5.0.r),
          //         borderSide: BorderSide(
          //             color: AppColors.greyParagraphColor.withOpacity(0.2)),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
