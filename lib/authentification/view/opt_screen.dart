import 'package:fast_sky/authentification/components/input_verification_code.dart';
import 'package:fast_sky/imports.dart';

class OptScreen extends StatefulWidget {
  OptScreen({Key? key}) : super(key: key);

  @override
  State<OptScreen> createState() => _OptScreenState();
}

class _OptScreenState extends State<OptScreen> {
  TextEditingController controller = TextEditingController();
  int sim = 5;
  @override
  Widget build(BuildContext context) {
    TextStyle inputTextStyle =
        const TextStyle(color: Colors.black, fontSize: 18);
    return Scaffold(
      //backgroundColor: Colors.lightBlue,
      body: Column(
        children: [
          Expanded(
            child: Image.asset("assets/images/Confirmed-rafiki.png"),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const InputVerificationCode(),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
                    },
                    child: const Text("Vérifier"),
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
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              avatar: Text(
                "05",
              ),
              onSelected: (d) {
                sim = 5;
                if (controller.text.length > 1) {
                  controller.text = "0$sim" + controller.text.substring(2);
                } else {
                  controller.text = "0$sim" + controller.text;
                }
                print(controller.text);
                setState(() {});
              },
              selected: sim == 5,
              selectedColor: Colors.indigo,
              showCheckmark: false,
              backgroundColor: Colors.lightBlueAccent),
          RawChip(
              label: Text("Mobilis"),
              avatar: Text("06"),
              onSelected: (d) {
                sim = 6;
                if (controller.text.length > 1) {
                  controller.text = "0$sim" + controller.text.substring(2);
                } else {
                  controller.text = "0$sim" + controller.text;
                }

                print(controller.text);
                setState(() {});
              },
              selected: sim == 6,
              selectedColor: Colors.indigo,
              showCheckmark: false,
              backgroundColor: Colors.lightBlueAccent),
          RawChip(
              label: Text("Djeezy"),
              avatar: Text("07"),
              onSelected: (d) {
                sim = 7;
                if (controller.text.length > 1) {
                  controller.text = "0$sim" + controller.text.substring(2);
                } else {
                  controller.text = "0$sim" + controller.text;
                }
                print(controller.text);
                setState(() {});
              },
              selected: sim == 7,
              selectedColor: Colors.indigo,
              showCheckmark: false,
              backgroundColor: Colors.lightBlueAccent),
        ],
      );
}
