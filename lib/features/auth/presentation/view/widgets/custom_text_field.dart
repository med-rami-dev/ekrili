import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    required this.labelText,
    required this.controller,
    required this.isPassword,
    required this.keyboardType,
    required this.displayIcon,
    this.focusBorder,
    this.enableBorder,
    this.padding,
    this.onSubmitted,
    required this.prefixIcon,
  });
  final String labelText;
  TextEditingController controller = TextEditingController();
  final bool isPassword;
  final TextInputType keyboardType;
  final bool displayIcon;
  InputBorder? focusBorder;
  InputBorder? enableBorder;
  final EdgeInsets? padding;
  final Widget prefixIcon;
  final Function(String)? onSubmitted;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;
  bool isEditing = false;
  @override
  void initState() {
    super.initState();
    isObscure = widget.isPassword;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: TextFormField(
        autofocus: false,
        obscureText: widget.isPassword ? isObscure : false,
        controller: widget.controller,
        style: const TextStyle(
          color: Colors.black,
        ),
        onFieldSubmitted: widget.onSubmitted,
        onChanged: (value) {
          setState(() {
            isEditing = value.isNotEmpty;
          });
        },
        decoration: InputDecoration(
          hintText: widget.labelText,
          hintStyle: const TextStyle(
            color: Color.fromRGBO(117, 117, 118, 1),
          ),
          focusedBorder: widget.focusBorder,
          enabledBorder: widget.enableBorder,
          contentPadding: widget.padding,
          prefixIcon: widget.displayIcon
              ? Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: widget.prefixIcon,
                )
              : null,
          suffixIcon: widget.isPassword && isEditing
              ? IconButton(
                  color: const Color.fromARGB(255, 129, 129, 129),
                  icon: isObscure
                      ? const Icon(
                          Icons.visibility_off,
                          color: Colors.green,
                        )
                      : const Icon(
                          Icons.visibility,
                          color: Colors.green,
                        ),
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                )
              : null,
        ),
        keyboardType: widget.keyboardType,
      ),
    );
  }
}
