import 'package:fast_sky/imports.dart';

class InputVerificationCode extends StatelessWidget {
  const InputVerificationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerificationCode(
      autofocus: true,
      onCompleted: (s) {
        print(s);
      },
      onEditing: (b) {
        print(b);
      },
      keyboardType: TextInputType.phone,
      textStyle: const TextStyle(fontSize: 20, color: Colors.white),
      digitsOnly: true,
      underlineColor: Colors.black,
      underlineUnfocusedColor: Colors.white,
      length: 6,
    );
  }
}
