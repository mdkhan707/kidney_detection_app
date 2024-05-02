import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Overivew',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.deepPurple
            // flexibleSpace: Container(
            //   decoration: const BoxDecoration(
            //     gradient: LinearGradient(
            //       begin: Alignment.topLeft,
            //       end: Alignment.bottomRight,
            //       colors: [
            //         Color.fromARGB(255, 13, 113, 150),
            //         Color.fromARGB(255, 87, 179, 212),
            //       ],
            //     ),
            //   ),
            // ),
            ),
        body: SafeArea(
          child: Container(
            alignment: Alignment.topLeft,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Introduction To Kidney Disese\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        WidgetSpan(
                          child: Text(
                            'Kidney plays an extremely important role in human health, and one of its important tasks is to purify the blood from toxic substances. Chronic Kidney Disease (CKD) means that kidney begins to lose its function gradually and show some symptoms, such as fatigue, weakness, nausea, vomiting, and frequent urination. Early diagnosis and treatment increase the likelihood of recovery from the disease. Due to high classification performance, artificial intelligence techniques have been widely used to classify disease data in the last ten years. In this study, a hybrid model based on Convolutional Neural Network (CNN) was proposed using data set that contains a CSV files, which automatically classified CKD. This data set consisted of foremost important features that were selected by Recursive Feature Elimination (RFE). Hemoglobin, Specific Gravity, Serum Creatinine, Red Blood Cell Count, Albumin, Packed Cell Volume, and Hypertension were found as key features in the RFE. Selected features were passed to machine learning models for classification purposes. and one output. If the features showed, CKD was diagnosed. Compared with many well-known machine learning methods, the proposed CNN based model obtained a classification accuracy of 99.17%.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
