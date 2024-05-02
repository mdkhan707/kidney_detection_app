import 'package:flutter/material.dart';
import 'package:kidney_disese/screens/detection_screen.dart';
import 'package:kidney_disese/screens/overview_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 22, 13, 150),
                      Color.fromARGB(255, 145, 87, 212),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
              padding: const EdgeInsets.only(top: 50),
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              // color: Color.fromARGB(255, 16, 170, 226),
              child: const Column(
                children: [
                  Text(
                    "SKIN CANCER DETECTION",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "By Using Deep Learning Models",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              )),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainButton(
              text: 'Overview',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const OverviewScreen();
                }));
              },
            ),
            const SizedBox(
              height: 30,
            ),
            MainButton(
              text: 'Detection',
              subText: 'Using Convolution Neural Network',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetectionScreen()));
              },
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}

class MainButton extends StatelessWidget {
  final String text;
  final String? subText;
  final Function() onPressed;
  const MainButton({
    Key? key,
    required this.text,
    this.subText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple, fixedSize: const Size(350, 100)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
          subText == null
              ? Container()
              : Text(
                  subText!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ],
      ),
    );
  }
}
