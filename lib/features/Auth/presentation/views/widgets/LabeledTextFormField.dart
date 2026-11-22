// ignore_for_file: must_be_immutable, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/auth_field_label.dart';

class LabeledTextFormField extends StatefulWidget {
  new({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.hintIcon,
    required this.isPassword,
    required this.keyboardType,
    required this.onSaved,
    required this.validator,
    this.textEditingController,
  });
  final String hintText;
  final String hintIcon;
  final String labelText;
  final bool isPassword;
  final TextInputType keyboardType;
  void Function(String?)? onSaved;
  String? Function(String?)? validator;
  final TextEditingController? textEditingController;
  @override
  State<LabeledTextFormField> createState() => _LabeledTextFormFieldState();
}

class _LabeledTextFormFieldState extends State<LabeledTextFormField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthFieldLabel(title: widget.labelText),
        AppGap.vSm,
        TextFormField(
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.left,
          validator: widget.validator,
          obscureText: widget.isPassword && _isObscured,
          keyboardType: widget.keyboardType,
          onSaved: widget.onSaved,
          controller: widget.textEditingController,
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
                : null,
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
        ),
      ],
    );
  }
}
