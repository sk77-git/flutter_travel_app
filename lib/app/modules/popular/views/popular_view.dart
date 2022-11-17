import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/popular_controller.dart';

class PopularView extends GetView<PopularController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopularView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PopularView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
