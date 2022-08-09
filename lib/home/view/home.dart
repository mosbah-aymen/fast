import 'package:fast_sky/imports.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final PageController controller = PageController();
  final List<Widget> pages = Const.homePages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("FastSky", style: TextStyle(color: Colors.white)),
      ),
      body: PageView(
        controller: controller,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (p) {
          controller.animateToPage(p,
              duration: const Duration(seconds: 1), curve: Curves.ease);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.blueAccent), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.history_edu_outlined, color: Colors.blueAccent),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.blueAccent), label: ''),
        ],
      ),
    );
  }
}
