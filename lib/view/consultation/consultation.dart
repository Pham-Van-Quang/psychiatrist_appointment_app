// ignore_for_file: deprecated_member_use

import 'package:doctor_app/components/constants.dart';
import 'package:doctor_app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Consultation extends StatefulWidget {
  const Consultation({super.key});

  @override
  State<Consultation> createState() => _ConsultationState();
}

class _ConsultationState extends State<Consultation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Align(
            alignment: Alignment.center,
            child: Text("Tư vấn bệnh nhân",
                style: Theme.of(context).textTheme.displayMedium),
          ),
          toolbarHeight: 80.h,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Animate(
                child: Image.asset(
                  'assets/images/consultation.png',
                  height: 300.h,
                  width: 300.h,
                ),
              ).scale(duration: const Duration(seconds: 2)),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, AppRouterName.conversation),
                child: Text('Trò chuyện',
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w700)),
              )
            ],
          ),
        ));
  }
}
