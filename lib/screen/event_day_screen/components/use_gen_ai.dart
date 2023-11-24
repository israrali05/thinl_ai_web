import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/event_screen_controller.dart';
import '../../../utils/app_colors/colors.dart';
import '../../../utils/app_constants/app_constant.dart';
import '../../../utils/app_font_styles/app_styles.dart';
import '../../../widget/custom_text/customtext.dart';
import '../../../widget/our_botton/our_botton.dart';
import '../../../widget/paragraph_widget_text/paragraph_widget_text.dart';
import '../../feed_back_screen/components/message_box_widget.dart';

class UseGenAI extends StatefulWidget {
  const UseGenAI({super.key});

  @override
  State<UseGenAI> createState() => _UseGenAIState();
}

class _UseGenAIState extends State<UseGenAI> {
  List<String> buttonTitles = [
    'Revert',
    'Improve',
    'Enchance',
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        height: height,
        width: width,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: AppColors.borderColor,
            )),
        child: Column(
          children: [
            ConatinerBoxParagraphWidget(
              bottomText: "Saima (#542d124)",
              paragraphtext: AppTexts.shortname,
            ),
            Consumer<IdeasControllers>(
                builder: (context, selectedIndexProvider, child) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 25,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: buttonTitles.length,
                        itemBuilder: (context, int index) {
                          return GestureDetector(
                            onTap: () {
                              selectedIndexProvider.selectedIndex = index;
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              margin: EdgeInsets.only(right: 5),
                              decoration: ShapeDecoration(
                                color:
                                    selectedIndexProvider.selectedIndex == index
                                        ? AppColors.primary
                                        : AppColors.whiteColor,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1,
                                      color: selectedIndexProvider
                                                  .selectedIndex ==
                                              index
                                          ? AppColors.primary
                                          : AppColors.grey.withOpacity(0.2)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  buttonTitles[index],
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w400,
                                    color:
                                        selectedIndexProvider.selectedIndex ==
                                                index
                                            ? Colors.white
                                            : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            }),
            SizedBox(height: 30),

            ///voice and text box
            MessageBoxWidget(),
          ],
        ),
      ),
    );
  }
}
