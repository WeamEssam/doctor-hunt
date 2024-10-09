import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NativeScreen extends StatelessWidget {
  const NativeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'doctor hunt',
          style: TextStyle(
            fontSize: 25.sp,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Text(
            'hello',
            style: TextStyle(fontSize: 16.sp),
          ),
        ),
      ),
    );
  }
}
