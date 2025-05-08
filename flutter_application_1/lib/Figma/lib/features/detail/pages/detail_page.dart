import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/detail/widgets/app_bar_detail.dart';
import 'package:flutter_application_1/features/detail/widgets/container_detail.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: SafeArea(
          child: const AppBarDetail(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ContainerDetail(),
          ],
        ),
      ),
    );
  }
}