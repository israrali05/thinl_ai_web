import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/event_screen_controller.dart';
import '../../utils/app_colors/colors.dart';
import '../../utils/app_font_styles/app_styles.dart';
import '../../widget/app_bar/appbar.dart';
import '../../widget/custom_text/customtext.dart';
import '../../widget/custom_text_field/textformfield.dart';
import 'components/all_screen.dart';
import 'components/search_screen.dart';
import 'components/search_with_ai.dart';

class ModeratorReport extends StatefulWidget {
  const ModeratorReport({super.key});

  @override
  State<ModeratorReport> createState() => _ModeratorReportState();
}

class _ModeratorReportState extends State<ModeratorReport> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    List<String> buttonTitles = [
      'All',
      'Search',
      'Search With AI',
    ];

    List<Widget> screenContents = [
      AllScreen(),
      SearchScreen(),
      SearchWithAI(),
    ];
    return Scaffold(
      backgroundColor: AppColors.textWhiteColor,
      appBar: MyAppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 50,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                text: "Reports",
                style: AppTextStyles.mainHeadingStyle,
              ),
              SizedBox(height: 20),
              Consumer<EventScreenProvider>(
                  builder: (context, selectedIndexProvider, child) {
                return Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: buttonTitles.length,
                              itemBuilder: (context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    if (selectedIndexProvider.selectedIndex ==
                                        index) {
                                      selectedIndexProvider.selectedIndex = -1;
                                    } else {
                                      selectedIndexProvider.selectedIndex =
                                          index;
                                    }
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    margin: EdgeInsets.only(right: 20),
                                    decoration: ShapeDecoration(
                                      color:
                                          selectedIndexProvider.selectedIndex ==
                                                  index
                                              ? AppColors.primary
                                              : AppColors.whiteColor,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 1,
                                            color: selectedIndexProvider
                                                        .selectedIndex ==
                                                    index
                                                ? AppColors.primary
                                                : AppColors.grey
                                                    .withOpacity(0.2)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        buttonTitles[index],
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'Source Sans Pro',
                                          fontWeight: FontWeight.w400,
                                          color: selectedIndexProvider
                                                      .selectedIndex ==
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
                            Container(
                                width: 300,
                                height: 50,
                                child: CustomTextFormField(
                                    hintText: 'Search',
                                    controller: _searchController)),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Expanded(
                        child: selectedIndexProvider.selectedIndex == -1
                            ? AllScreen()
                            : screenContents[
                                selectedIndexProvider.selectedIndex],
                      ),
                    ],
                  ),
                );
              }),
            ]),
      ),
    );
  }
}
