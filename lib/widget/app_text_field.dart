import 'package:flutter/material.dart';
import 'package:resume_project/app_utils/app_utils.dart';

import '../config/app_theme.dart';

class AppTextField extends StatefulWidget {
  final bool isPassword;
  final String? hint;
  final String? error;
  final int minLines, maxLines;
  final String? suffixIcon;
  final VoidCallback? onSuffixPressed;
  final VoidCallback? onCLick;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool isRequired, readOnly;
  final FocusNode? focus;
  final Color? color;
  const AppTextField(
      {Key? key,
      this.isPassword = false,
      this.hint,
      this.error,
      this.minLines = 1,
      this.maxLines = 8,
      this.suffixIcon,
      this.onSuffixPressed,
      this.onCLick,
      this.controller,
      this.focus,
      this.color,
      this.keyboardType,
      this.isRequired = false,
      this.readOnly = false})
      : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      onTap: widget.onCLick,
      controller: widget.controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      textInputAction: TextInputAction.next,
      obscureText: widget.isPassword, cursorColor: AppTheme.primary,
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      readOnly: widget.readOnly,
      focusNode: widget.focus,
      style: AppUtils.textblackRobotoRegular12,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        hintStyle: AppUtils.textborderRobotoRegular12,
        hintText: widget.hint,
        enabledBorder: OutlineInputBorder(),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: AppTheme.primary)),
        // border: InputBorder.none,
        isDense: true,
        // contentPadding: EdgeInsets.all(10),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        suffixIcon: widget.suffixIcon != null
            ? IconButton(
                onPressed: widget.onSuffixPressed,
                icon: Image.asset(widget.suffixIcon!, width: 18, height: 18.0),
              )
            : null,
      ),
      // validator: (fnameVal) {
      //   if (fnameVal == null || fnameVal.isEmpty) {
      //     return widget.hint;
      //   }
      // },
    );
  }
}
