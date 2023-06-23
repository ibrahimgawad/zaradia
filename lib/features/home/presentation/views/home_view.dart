import 'package:flutter/material.dart';
import 'package:mypharmacy_app/constant.dart';
import 'package:mypharmacy_app/features/chat/presentation/views/chat_view.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:mypharmacy_app/features/setting/presentation/views/setting_view.dart';
import 'package:mypharmacy_app/features/shopping/presentation/views/shopping_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int pageIndex = 0;

  final pages = [
    const HomeViewBody(),
    const ChatView(),
    const ShoppingView(),
    const SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: pageIndex == 0
                      ? Image.asset(
                          'assets/images/Icon awesome-home.png',
                          color: Colors.white,
                          width: 50,
                          height: 30,
                        )
                      : Image.asset(
                          'assets/images/Icon awesome-home.png',
                          color: const Color(0xff3D3D6F),
                          width: 50,
                          height: 30,
                        )),
              IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: pageIndex == 1
                      ? Image.asset(
                          'assets/images/Icon ionic-ios-chatbubbles.png',
                          color: Colors.white,
                          width: 60,
                          height: 30,
                        )
                      : Image.asset(
                          'assets/images/Icon ionic-ios-chatbubbles.png',
                          color: const Color(0xff3D3D6F),
                        )),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                    ? Image.asset(
                        'assets/images/Icon awesome-shopping-cart.png',
                        color: Colors.white,
                        width: 60,
                        height: 30,
                      )
                    : Image.asset(
                        'assets/images/Icon awesome-shopping-cart.png',
                        color: const Color(0xff3D3D6F),
                      ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: pageIndex == 3
                    ? const Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 35,
                      )
                    : const Icon(
                        Icons.settings,
                        size: 35,
                        color: Color(0xff3D3D6F),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
