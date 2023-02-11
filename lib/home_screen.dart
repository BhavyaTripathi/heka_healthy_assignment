import 'package:flutter/material.dart';
import 'package:heka_healthy/grid_class.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        headerWidget(context),
        searchWidget(),
        const SizedBox(height: 8),
        Expanded(
            child: WidgetsApp(
                debugShowCheckedModeBanner: false,
                color: Colors.white,
                builder: (context, child) => GridClass())),
        const SizedBox(height: 4)
      ]),
      bottomNavigationBar: navBarWidget(),
    );
  }

  Widget headerWidget(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        height: MediaQuery.of(context).size.height / 5,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                child: Image.asset('assets/logo.png'),
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(children: [
                      Image.asset('assets/home_logo.png'),
                      const SizedBox(width: 8),
                      const Icon(Icons.menu)
                    ]),
                    const SizedBox(height: 8),
                    Image.asset('assets/text.png')
                  ])
            ]));
  }

  Widget searchWidget() {
    return Container(
        height: 40,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                filled: true,
                prefixIcon: const Icon(Icons.search, color: Color(0xFF3F6B68)),
                hintStyle: const TextStyle(color: Colors.black),
                hintText: "Search",
                contentPadding: const EdgeInsets.only(top: 3, left: 20),
                fillColor: Colors.white)));
  }

  Widget navBarWidget() {
    return Container(
        height: 60,
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.black, width: 1.0))),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(onPressed: () {}, icon: Image.asset('assets/info.png')),
          IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: Image.asset('assets/home.png')),
          IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: Image.asset('assets/change_history.png'))
        ]));
  }
}
