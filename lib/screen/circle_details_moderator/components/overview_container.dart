import 'package:flutter/material.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:project22/widget/custom_textfield_label/custom_textfield_label.dart';

class OverviewConatiner extends StatelessWidget {
  const OverviewConatiner({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SingleChildScrollView(
      child: Column(children: [
        Row(
          children: [
            Expanded(
                child: CustomTextField(
              label: "First Name",
              hintText: "First Name",
            )),
            SizedBox(
              width: MediaQuery.of(context).size.width * 5 / 100,
            ),
            Expanded(
                child: CustomTextField(
              label: "Event Title",
              hintText: "Event Title",
            )),
          ],
        ),
        SizedBox(
          height: MySize.size20,
        ),
        Row(
          children: [
            Expanded(
                child: CustomTextField(
              label: "Total Participants",
              hintText: "Total Participants",
            )),
            SizedBox(
              width: MediaQuery.of(context).size.width * 5 / 100,
            ),
            Expanded(
                child: CustomTextField(
              label: "Now Register",
              hintText: "Now Register",
            )),
          ],
        ),
        SizedBox(
          height: MySize.size20,
        ),
        Row(
          children: [
            Expanded(
                child: CustomTextField(
              label: "Member Name",
              hintText: "Member Name",
            )),
            SizedBox(
              width: MediaQuery.of(context).size.width * 5 / 100,
            ),
            Expanded(
                child: CustomTextField(
              label: "User Code",
              hintText: "User Code",
            )),
          ],
        ),
        SizedBox(
          height: MySize.size20,
        ),
      ]),
    );
  }
}
