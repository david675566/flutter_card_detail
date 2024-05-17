import 'package:flutter/material.dart';
import 'package:flutter_card_detail/card/model/card_model.dart';

class ClassDetailView extends StatelessWidget {
  final TeacherModel data;
  final int displayIndex;
  const ClassDetailView({super.key, required this.data, required this.displayIndex});

  @override
  Widget build(BuildContext context) {
    final displayClass = data.classes[displayIndex];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).dialogBackgroundColor,
        title: const Text("課程資訊"),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: const EdgeInsets.all(18),
            children: [
              Text("課堂名稱: ${displayClass.name}"),
              Text("課堂說明: ${displayClass.name}"),
              Text("授課教師: ${data.name}"),
              Text("上課時間: ${displayClass.date}"),
              const Divider(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("成功選課!"),
                    ),
                  );
                },
                child: const Text("選擇課程"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
