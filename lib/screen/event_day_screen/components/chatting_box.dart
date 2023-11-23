import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:project22/model/every_day_model.dart';
import 'package:project22/screen/event_day_screen/components/chat_textfield.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/custom_text/customtext.dart';

class ChattingBox extends StatefulWidget {
  const ChattingBox({super.key});

  @override
  State<ChattingBox> createState() => _ChattingBoxState();
}

class _ChattingBoxState extends State<ChattingBox> {
  TextEditingController _sendMessageController = TextEditingController();
  ScrollController scrollController = ScrollController();
  List<EveryDayModel> messages = [];

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    scrollController.dispose();
    _sendMessageController.dispose();
  }

  void continuousScroll() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.animateTo(scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 300), curve: Curves.easeOut);
      }
    });
  }

  void sendMessage(String message) {
    setState(() {
      messages.add(EveryDayModel(text: message, isSend: true));
      _sendMessageController.clear();
      Future.delayed(Duration(seconds: 2), () {
        receiveMessage('Got it!');
      });
    });
  }

  void receiveMessage(String message) {
    setState(() {
      messages.add(EveryDayModel(text: message, isSend: false));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.25,
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppColors.whiteColor, width: 1)),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: ListView.builder(
              controller: scrollController,
              itemCount: messages.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                continuousScroll();
                return Align(
                  alignment: messages[index].isSend == true
                      ? Alignment.topLeft
                      : Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Bubble(
                        nip: BubbleNip.rightBottom,
                        radius: Radius.circular(0),
                        nipRadius: 0,
                        // nipHeight: 50,
                        nipWidth: 10,
                        padding: BubbleEdges.all(4),
                        borderColor: AppColors.secondary,
                        child: CustomText(
                          textAlign: TextAlign.justify,
                          text: messages[index].text,
                          style: AppTextStyles.hintStyle,
                        )),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ChatComponent(
          textController: _sendMessageController,
          scrollController: scrollController,
          onTap: () {
            sendMessage(_sendMessageController.text.toString());
          },
        ),
      ],
    );
  }
}
