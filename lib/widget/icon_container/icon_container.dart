import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';

import '../../screen/participant_all_circle_ideas/components/horizontal_container.dart';
import '../../utils/app_constants/app_constant.dart';

class HorizontalContainer extends StatelessWidget {
  const HorizontalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            Icons.compare_arrows,
            color: Colors.white,
          ),
        ),
        IdeaContainer(
          width: MediaQuery.of(context).size.width * 0.5,
          text: AppTexts.customLoremText,
          
        ),
      ],
    );
  }
}
