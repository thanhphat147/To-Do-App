import 'package:flutter/material.dart';
import 'package:to_do_app/component/buttons.dart';

import '../config/themes/app_colors.dart';

class DiaLogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DiaLogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.colorYellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //get user input
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: "Thêm task mới"),
            ),
            //button: save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //save button
                Buttons(text: "Lưu", onPressed: onSave),
                const SizedBox(
                  width: 20,
                ),
                //cancel button
                Buttons(text: "Hủy", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
