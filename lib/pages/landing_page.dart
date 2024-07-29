import 'package:amanah_optikal/common/constant.dart';
import 'package:amanah_optikal/providers/landing_provider.dart';
import 'package:amanah_optikal/widget/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LandingProvider>(
      builder: (context, landingProvider, child) {
        return Title(
          title: "Amanah Optikal | ${landingProvider.slideTitle}",
          color: white,
          child: Scaffold(
            backgroundColor: darkBackgorundColor,
            body: SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Stack(
                  children: [
                    SizedBox(
                      height: height(context),
                      width: width(context),
                      child: Image.asset(
                        "assets/png/background_image.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height(context) * 0.15),
                      child: Center(
                        child: Image.asset(
                          "assets/png/192-amanah-optikal.png",
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: height(context) * 0.5,
                        width: width(context),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(80),
                          ),
                        ),
                        child: SingleChildScrollView(
                          padding: EdgeInsets.all(defaultPadding),
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: landingProvider.slideIndex == 0
                                ? slideWidget1(
                                    context,
                                    landingProvider,
                                  )
                                : slideWidget2(
                                    context,
                                    landingProvider,
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  List<Widget> slideWidget1(
    BuildContext context,
    LandingProvider landingProvider,
  ) {
    return [
      Text(
        "AMANAH OPTIKAL",
        style: secondaryTextStyle.copyWith(
          fontSize: 30,
          fontWeight: extraBold,
        ),
      ),
      Text(
        "Kacamata & Lensa Optik",
        style: secondaryTextStyle.copyWith(
          fontSize: 16,
          color: grey400,
        ),
      ),
      SizedBox(
        height: defaultPadding * 2,
      ),
      CustomButtonWidget(
        text: "Daftar Outlet",
        onPressed: () {
          landingProvider.setSlideIndex(1);
          landingProvider.setSlideTitle("Daftar Outlet");
        },
      ),
      CustomButtonWidget(
        text: "WhatsApp Customer",
        onPressed: () {
          urlLauncher("https://wa.me/6281323550799");
        },
      ),
      CustomButtonWidget(
        text: "Instagram",
        onPressed: () {
          urlLauncher("https://www.instagram.com/amanah_optikal?igsh=MWd2aGo3NWo5enZocQ==");
        },
      ),
      SizedBox(
        height: defaultPadding,
      ),
      Text(
        "Jaminan Mutu dan Pelayanan",
        style: secondaryTextStyle.copyWith(
          fontSize: 16,
          color: grey400,
        ),
      ),
    ];
  }

  List<Widget> slideWidget2(
    BuildContext context,
    LandingProvider landingProvider,
  ) {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          landingProvider.slideIndex == 1
              ? Padding(
                  padding: EdgeInsets.only(left: width(context) * 0.01),
                  child: GestureDetector(
                    onTap: () {
                      landingProvider.setSlideIndex(0);
                      landingProvider.setSlideTitle("Landing Page");
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: black,
                    ),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(left: width(context) * 0.01),
                  child: const SizedBox.shrink(),
                ),
          Text(
            "DAFTAR OUTLET",
            style: secondaryTextStyle.copyWith(
              fontSize: 30,
              fontWeight: extraBold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: width(context) * 0.01),
            child: const SizedBox.shrink(),
          ),
        ],
      ),
      SizedBox(
        height: defaultPadding * 2,
      ),
      CustomButtonWidget(
        text: "Outlet 1",
        onPressed: () {
          urlLauncher("https://maps.app.goo.gl/DRwNecqQDtS98dEr5");
        },
      ),
      CustomButtonWidget(
        text: "Outlet 2",
        onPressed: () {
          urlLauncher("https://maps.app.goo.gl/3oRDdjbJhCbdubgY9");
        },
      ),
      SizedBox(
        height: height(context) * 0.1,
      ),
      Text(
        "Jaminan Mutu dan Pelayanan",
        style: secondaryTextStyle.copyWith(
          fontSize: 16,
          color: grey400,
        ),
      ),
    ];
  }
}
