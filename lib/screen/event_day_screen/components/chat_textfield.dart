import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';

class ChatComponent extends StatefulWidget {
  ScrollController? scrollController;
  void Function()? onTap;
  TextEditingController? textController;

  ChatComponent(
      {super.key, this.scrollController, this.onTap, this.textController});

  @override
  State<ChatComponent> createState() => _ChatComponentState();
}

class _ChatComponentState extends State<ChatComponent> {
  bool _isVisible = true;
  ScrollController scrollController = ScrollController();
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
    return Padding(
      padding:
      EdgeInsets.only(bottom: MediaQuery
          .of(context)
          .viewInsets
          .bottom),
      child: TextFormField(
        focusNode: _focusNode,
        scrollController: scrollController,
        style: AppTextStyles.hintStyle,
        controller: widget.textController,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xFFDEDCDC))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Color(0xFFDEDCDC), width: 1)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Color(0xFFDEDCDC), width: 1)),
          hintText: "Message",
          hintStyle: AppTextStyles.hintStyle
              .copyWith(color: AppColors.grey),
          contentPadding: EdgeInsets.only(left: 10),
          prefixIcon: Padding(
            padding: EdgeInsets.all(14),
            // child: Image.asset(
            //   // AppImages.chatPrefixImage,
            //   // width: 10,
            //   // height: 10,
            // ),
          ),
          suffixIcon: isFocused
              ? Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(
                Icons.send,
                color: AppColors.primary,
                size: 20,
              ),
              onPressed: widget.onTap,
            ),
          )
              : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Image.asset(
                //   AppImages.voiceImage,
                //   height: 18,
                //   width: 18,
                // ),
                SizedBox(width: 10),
                // Image.asset(
                //   AppImages.cameraImage,
                //   height: 18,
                //   width: 18,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}