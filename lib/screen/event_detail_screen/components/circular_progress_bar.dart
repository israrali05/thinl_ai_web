import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/widget/custom_text/customtext.dart';

class CircularProgressBar extends StatelessWidget {
  final double progress1;
  final String centertext;
  final String botomtext;

  CircularProgressBar({
    required this.progress1,
    required this.centertext,
    required this.botomtext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120.0,
          height: 120.0,
          child: Stack(
            children: [
              Center(
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  child: CircularProgressIndicator(
                    value:
                        progress1, // Change the value to update progress (0.0 to 1.0)
                    strokeWidth: 8.0,
                    backgroundColor: AppColors.secondary.withOpacity(0.5),
                    valueColor:
                        AlwaysStoppedAnimation<Color>(AppColors.primary),
                  ),
                ),
              ),
              Center(
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.secondary,
                  child: Text(
                    centertext, // Display progress percentage
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w600,
                      height: 0.09,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        CustomText(
          text: botomtext,
          style: TextStyle(
            color: Color(0xFF666666),
            fontSize: 14,
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.w600,
            height: 0.09,
          ),
        )
      ],
    );
  }
}
