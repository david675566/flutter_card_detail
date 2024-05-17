import 'package:flutter/material.dart';
import 'package:flutter_card_detail/card/model/card_model.dart';

import './class_detail.dart';

class TeacherCardWidget extends StatefulWidget {
  final TeacherCard data;
  const TeacherCardWidget({super.key, required this.data});

  @override
  State<TeacherCardWidget> createState() => _TeacherCardWidget();
}

class _TeacherCardWidget extends State<TeacherCardWidget> {
  bool expand = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 210),
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        children: [
          // Teacher Info
          ListTile(
            titleTextStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            subtitleTextStyle: const TextStyle(color: Colors.black, fontSize: 16),
            leading: CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(widget.data.avatarUrl),
            ),
            title: Text(widget.data.title),
            subtitle: Text(widget.data.name),
            trailing: IconButton(
              icon: Icon(!expand ? Icons.add : Icons.remove),
              onPressed: () => setState(() {
                expand = !expand;
              }),
            ),
          ),

          Visibility(
            visible: expand,
            child: const Padding(padding: EdgeInsets.symmetric(horizontal: 36), child: Divider(thickness: 3.0)),
          ),

          // Class Info
          Visibility(
            visible: expand,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.data.classes.length,
              itemBuilder: (ctx, i) => ListTile(
                leading: const Icon(Icons.calendar_month),
                title: Text(widget.data.classes[i].name),
                subtitle: Text(widget.data.classes[i].date),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => ClassDetailView(
                        data: widget.data,
                        displayIndex: i,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
