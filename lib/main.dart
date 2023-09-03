import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tashidalek/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: size.width <= 744
          ? AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tashidalek",
                    style: AppStyle.headline1
                        .copyWith(color: AppStyle.appBarTitle),
                  ),
                  Text(
                    ".",
                    style: AppStyle.headline1.copyWith(
                      color: AppStyle.blue,
                    ),
                  ),
                ],
              ),
            )
          : AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
      backgroundColor: const Color(0xff0D0D0D),
      body: Stack(
        children: [
          Column(
            children: [
              LayoutBuilder(builder: (context, constrains) {
                if (constrains.maxWidth <= 744) {
                  return SizedBox(
                    height: size.height * 0.66 - 90,
                    child: Stack(
                      children: [
                        Positioned(
                          top: size.height * .33 - 90,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: size.height * .33,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                                color: Color(0xff354FF8)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 25, right: 16, bottom: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "английский",
                                    style: TextStyle(
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.30),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Inter",
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Divider(
                                    height: 1,
                                    thickness: 1,
                                    color: Color.fromRGBO(255, 255, 255, 0.15),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  SingleChildScrollView(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: (size.height * .3) * .43,
                                          width: size.width - 70,
                                          child: const TextField(
                                            maxLines: null,
                                            keyboardType:
                                                TextInputType.multiline,
                                            decoration: InputDecoration(
                                              hintText:
                                                  "Введите текст для перевода",
                                              hintStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Inter",
                                              ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                              disabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                            ),
                                            cursorWidth: 1,
                                            cursorColor: Color(0xff354FF8),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(top: 15),
                                          height: (size.height * .3) * .43,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SvgPicture.asset(
                                                "assets/icons/close_white.svg",
                                                width: 13,
                                                height: 13,
                                              ),
                                              SvgPicture.asset(
                                                "assets/icons/copy_white.svg",
                                                width: 18,
                                                height: 18,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * .33,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            color: Color(0xff1A1A1A),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 16, bottom: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "русский",
                                  style: TextStyle(
                                    color: Color(0xff404040),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Inter",
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Color(0xff262626),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: (size.height * .3) * .5,
                                        width: size.width - 70,
                                        child: const TextField(
                                          maxLines: null,
                                          keyboardType: TextInputType.multiline,
                                          decoration: InputDecoration(
                                            hintText:
                                                "Введите текст для перевода",
                                            hintStyle: TextStyle(
                                              color: Color(0xff404040),
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                            disabledBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          ),
                                          cursorWidth: 1,
                                          cursorColor: Color(0xff354FF8),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Inter",
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 15),
                                        height: (size.height * .3) * .5,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SvgPicture.asset(
                                              "assets/icons/close.svg",
                                              width: 13,
                                              height: 13,
                                            ),
                                            SvgPicture.asset(
                                              "assets/icons/copy.svg",
                                              width: 18,
                                              height: 18,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: size.height / 2,
                              decoration: const BoxDecoration(
                                color: Color(0xff1A1A1A),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 40),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Tashidalek",
                                          style: AppStyle.headline1.copyWith(
                                              color: AppStyle.appBarTitle),
                                        ),
                                        Text(
                                          ".",
                                          style: AppStyle.headline1.copyWith(
                                            color: AppStyle.blue,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 25,
                                      right: 16,
                                      bottom: 10,
                                    ),
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "русский",
                                          style: TextStyle(
                                            color: Color(0xff404040),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Inter",
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Divider(
                                          height: 2,
                                          color: Color(0xff262626),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        SingleChildScrollView(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: (size.height / 2) * .5,
                                                width: size.width / 2 - 60,
                                                child: const TextField(
                                                  maxLines: null,
                                                  keyboardType:
                                                      TextInputType.multiline,
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        "Введите текст для перевода",
                                                    hintStyle: TextStyle(
                                                      color: Color(0xff404040),
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: "Inter",
                                                    ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                    ),
                                                    disabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                    ),
                                                  ),
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Inter",
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    top: 15, bottom: 10),
                                                height: (size.height / 2) * .5,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SvgPicture.asset(
                                                      "assets/icons/close.svg",
                                                      width: 13,
                                                      height: 13,
                                                    ),
                                                    SvgPicture.asset(
                                                      "assets/icons/copy.svg",
                                                      width: 18,
                                                      height: 18,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: size.height / 2,
                              decoration: const BoxDecoration(
                                color: Color(0xff354FF8),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 40),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Tashidalek",
                                          style: AppStyle.headline1.copyWith(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.3)),
                                        ),
                                        Text(
                                          ".",
                                          style: AppStyle.headline1.copyWith(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 25,
                                      right: 16,
                                      bottom: 10,
                                    ),
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "русский",
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.3),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Inter",
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Divider(
                                          height: 2,
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.15),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        SingleChildScrollView(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: (size.height / 2) * .5,
                                                width: size.width / 2 - 60,
                                                child: const TextField(
                                                  maxLines: null,
                                                  keyboardType:
                                                      TextInputType.multiline,
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        "Введите текст для перевода",
                                                    hintStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: "Inter",
                                                    ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                    ),
                                                    disabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                    ),
                                                  ),
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Inter",
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    top: 15, bottom: 10),
                                                height: (size.height / 2) * .5,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SvgPicture.asset(
                                                      "assets/icons/close_white.svg",
                                                      width: 13,
                                                      height: 13,
                                                    ),
                                                    SvgPicture.asset(
                                                      "assets/icons/copy_white.svg",
                                                      width: 18,
                                                      height: 18,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }
              }),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
                  width: size.width >= 744 ? 744 : size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "История переводов",
                        style: TextStyle(
                          color: Color(0xff454545),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Inter",
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemBuilder: ((context, index) {
                            return Container(
                              margin: const EdgeInsets.only(bottom: 12),
                              padding: const EdgeInsets.only(
                                  left: 17, right: 17, top: 10),
                              decoration: const BoxDecoration(
                                color: Color(0xff1C1C1C),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "русский",
                                            style: TextStyle(
                                              color: Color(0xff404040),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 6),
                                            child: SvgPicture.asset(
                                              "assets/icons/arrow.svg",
                                              width: 10,
                                            ),
                                          ),
                                          const Text(
                                            "английский",
                                            style: TextStyle(
                                              color: Color(0xff404040),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                            ),
                                          ),
                                        ],
                                      ),
                                      SvgPicture.asset(
                                        "assets/icons/close.svg",
                                        width: 13,
                                        height: 13,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const Divider(
                                    height: 1,
                                    thickness: 1,
                                    color: Color(0xff262626),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 12),
                                    width: size.width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Привет",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Inter",
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Hello",
                                          style: TextStyle(
                                            color: Color(0xff4D4D4D),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Inter",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Material(
              color: Colors.transparent,
              child: Container(
                padding: size.width >= 744
                    ? EdgeInsets.only(
                        left: (size.width - 744) / 2,
                        right: (size.width - 744) / 2)
                    : null,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                      ),
                      width: size.width >= 744 ? 744 : size.width,
                      height: 120,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 50,
                              decoration: const BoxDecoration(
                                color: Color(0xff1A1A1A),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Center(
                                child: Row(
                                  children: const [
                                    Expanded(
                                      child: Center(
                                        child: Text(
                                          "Русский",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Inter",
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    Expanded(
                                      child: Center(
                                        child: Text(
                                          "Английский",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Inter",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: SvgPicture.asset(
                              "assets/icons/change.svg",
                              height: 70,
                              width: 70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
