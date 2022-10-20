import 'package:flutter/material.dart';
import 'package:pasticceria_app/src/widgets/back.dart';

class RestorePage extends StatefulWidget {
  const RestorePage({super.key});

  @override
  State<RestorePage> createState() => _RestorePageState();
}

class _RestorePageState extends State<RestorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: BackButtonWidget(
                            callback: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),

                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 100,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
