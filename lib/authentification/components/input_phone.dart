import 'package:fast_sky/imports.dart';
import 'package:flutter/services.dart';

class InputPhone extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  const InputPhone(
      {Key? key, required this.controller, required this.focusNode})
      : super(key: key);
  final TextStyle inputTextStyle =
      const TextStyle(color: Colors.white, fontSize: 36, letterSpacing: 4);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        style: inputTextStyle,
        focusNode: focusNode,
        maxLength: 10,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.phone,
        validator: (v) => v!.isNotEmpty ? 'shoud not be empty' : "",
        decoration: InputDecoration(
            counterStyle: TextStyle(color: Colors.white),
            labelText: "Entrer votre numéro:",
            labelStyle: inputTextStyle.copyWith(fontSize: 20),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 3),
              borderRadius: BorderRadius.circular(20),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 3),
              borderRadius: BorderRadius.circular(20),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 3),
              borderRadius: BorderRadius.circular(20),
            )),
      ),
    );
  }
}
