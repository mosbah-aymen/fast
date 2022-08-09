import 'package:fast_sky/imports.dart';

PageController pageController = PageController();

class PagesContainer extends StatelessWidget {
  const PagesContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          allowImplicitScrolling: false,
          physics: NeverScrollableScrollPhysics(),
          children: [
            EnterPhone(),
            OptScreen(),
          ],
        ),
      ),
    );
  }
}
