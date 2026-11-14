// ignore_for_file: must_be_immutable, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hesba/Core/themes/app_colors.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';

class CustomTextFormField extends StatefulWidget {
  new({
    super.key,
    required this.hintText,
    required this.hintIcon,
    required this.isPassword,
    required this.keyboardType,
    required this.onSaved,
    required this.validator
  });
  final String hintText;
  final String hintIcon;
  final bool isPassword;
  final TextInputType keyboardType;
  void Function(String?)? onSaved;
  String? Function(String?)? validator;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator:widget.validator ,
      obscureText: widget.isPassword && _isObscured,
      keyboardType: widget.keyboardType,
      onSaved: widget.onSaved,
      maxLines: 1,
      decoration: InputDecoration(
        constraints: BoxConstraints(minHeight: AppInputSize.heightSmall),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
                icon: Icon(
                  _isObscured
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              )
            : SizedBox.shrink(),
        hint: Row(
          children: [
            SvgPicture.asset(widget.hintIcon),
            AppGap.hMd,
            Text(
              widget.hintText,
              style: AppTextStyles.body.copyWith(
                color: context.colors.textSecondary,
              ),
            ),
          ],
        ),
        // hintText: hintText
      ),
    );
  }
}
