import 'package:fast_sky/authentification/components/input_phone.dart';
import 'package:fast_sky/imports.dart';

class EnterPhone extends StatefulWidget {
  EnterPhone({Key? key}) : super(key: key);

  @override
  State<EnterPhone> createState() => _EnterPhoneState();
}

class _EnterPhoneState extends State<EnterPhone> {
  FocusNode focusNode = FocusNode();

  TextEditingController controller = TextEditingController();
  int sim = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.asset("assets/images/Privacy policy-rafiki.png"),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 50,
                    child: selectedSim(),
                  ),
                  InputPhone(controller: controller, focusNode: focusNode),
                  MaterialButton(
                    onPressed: () {
                      pageController.animateToPage(1,
                          duration: const Duration(seconds: 1),
                          curve: Curves.bounceOut);
                    },
                    child: Text("Continuer"),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget selectedSim() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RawChip(
              label: Text(
                "Ooredoo",
              ),
              avatar: Text(
                "05",
              ),
              onSelected: (d) {
                sim = 5;
                focusNode.requestFocus();
                if (controller.text.length > 1) {
                  controller.text = "0$sim" + controller.text.substring(2);
                } else {
                  controller.text = "0$sim" + controller.text;
                }
                print(controller.text);
                setState(() {});
              },
              selected: sim == 5,
              selectedColor: Colors.tealAccent,
              showCheckmark: false,
              backgroundColor: Colors.white),
          RawChip(
              label: Text("Mobilis"),
              avatar: Text("06"),
              onSelected: (d) {
                sim = 6;
                focusNode.requestFocus();

                if (controller.text.length > 1) {
                  controller.text = "0$sim" + controller.text.substring(2);
                } else {
                  controller.text = "0$sim" + controller.text;
                }

                print(controller.text);
                setState(() {});
              },
              selected: sim == 6,
              selectedColor: Colors.tealAccent,
              showCheckmark: false,
              backgroundColor: Colors.white),
          RawChip(
              label: Text("Djeezy"),
              avatar: Text("07"),
              onSelected: (d) {
                sim = 7;
                focusNode.requestFocus();

                if (controller.text.length > 1) {
                  controller.text = "0$sim" + controller.text.substring(2);
                } else {
                  controller.text = "0$sim" + controller.text;
                }
                print(controller.text);
                setState(() {});
              },
              selected: sim == 7,
              selectedColor: Colors.tealAccent,
              showCheckmark: false,
              backgroundColor: Colors.white),
        ],
      );
}
