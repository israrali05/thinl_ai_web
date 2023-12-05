import 'package:another_stepper/dto/stepper_data.dart';
import 'package:flutter/material.dart';

class AnotherStepper extends StatefulWidget {
  const AnotherStepper({super.key});

  @override
  State<AnotherStepper> createState() => _AnotherStepperState();
}

class _AnotherStepperState extends State<AnotherStepper> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<StepperData> stepperData = [
      StepperData(
          title: StepperText(
            "Order Placed",
            textStyle: const TextStyle(
              color: Colors.grey,
            ),
          ),
          subtitle: StepperText("Your order has been placed"),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30))),
          )),
      StepperData(
          title: StepperText("Preparing"),
          subtitle: StepperText("Your order is being prepared"),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: const Icon(Icons.looks_two, color: Colors.white),
          )),
      StepperData(
          title: StepperText("On the way"),
          subtitle: StepperText(
              "Our delivery executive is on the way to deliver your item"),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: const Icon(Icons.looks_3, color: Colors.white),
          )),
      StepperData(
          title: StepperText("Delivered",
              textStyle: const TextStyle(color: Colors.grey)),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.all(Radius.circular(30))),
          )),
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: AnotherStepper(
              // stepperList: stepperData,
              // stepperDirection: Axis.horizontal,
              // iconWidth: 40,
              // iconHeight: 40,
              // activeBarColor: Colors.green,
              // inActiveBarColor: Colors.grey,
              // inverted: true,
              // verticalGap: 30,
              // activeIndex: 1,
              // barThickness: 8,
              ),
        ),
      ],
    );
  }
}
