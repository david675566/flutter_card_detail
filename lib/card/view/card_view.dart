import 'package:flutter/material.dart';
import 'package:flutter_card_detail/card/model/card_model.dart';
import 'package:flutter_card_detail/card/view/card_item.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).dialogBackgroundColor,
        title: const Text("講師清單"),
      ),
      body: SafeArea(
        child: Center(
          child: ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
            padding: const EdgeInsets.all(16),
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemCount: exampleTeachers.length,
            itemBuilder: (ctx, i) => TeacherCardWidget(data: exampleTeachers[i]),
          ),
        ),
      ),
    );
  }
}
