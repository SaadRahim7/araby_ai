import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextInputType? textInputType;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? defaultText;
  final FocusNode? focusNode;
  final bool obscureText;
  final TextEditingController? controller;
  final Function? functionValidate;
  final String? parametersValidate;
  final TextInputAction? actionKeyboard;

  final Color? iconColor;

  const CustomTextField(
      {super.key,
      this.hintText,
      this.focusNode,
      this.textInputType,
      this.defaultText,
      this.obscureText = false,
      this.controller,
      this.functionValidate,
      this.parametersValidate,
      this.actionKeyboard = TextInputAction.next,
      this.prefixIcon,
      this.suffixIcon,
      this.iconColor});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  double bottomPaddingToError = 12;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TextField(
        cursorColor: const Color(0xff2476dc),
        obscureText: widget.obscureText,
        keyboardType: widget.textInputType,
        textInputAction: widget.actionKeyboard,
        focusNode: widget.focusNode,
        style: const TextStyle(
          color: Colors.black,
          // fontSize: 16.0,
        ),
        decoration: InputDecoration(
          //fillColor: Color.fromRGBO(30, 29, 37, 1.0),
          // filled: true,
          suffixIcon: widget.suffixIcon,
          prefixIcon: widget.prefixIcon,
          prefixIconColor: Colors.grey,
          hintText: widget.hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff2476dc)),
            borderRadius: BorderRadius.circular(10),
          ),
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontFamily: 'Ubuntu Regular',
          ),
          contentPadding: EdgeInsets.only(
              top: 12, bottom: bottomPaddingToError, left: 10.0, right: 8.0),
          // isDense: true,
          errorStyle: const TextStyle(
            color: Colors.red,
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.2,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        controller: widget.controller,
      ),
    );
  }
}

String? commonValidation(String value, String messageError) {
  var required = requiredValidator(value, messageError);
  if (required != null) {
    return required;
  }
  return null;
}

String? requiredValidator(value, messageError) {
  if (value.isEmpty) {
    return messageError;
  }
  return null;
}

void changeFocus(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
