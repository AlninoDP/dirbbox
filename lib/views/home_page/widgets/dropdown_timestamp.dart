import 'package:dirbbox/viewmodels/storage_viewmodel.dart';
import 'package:flutter/material.dart';

class DropdownTimestamp extends StatelessWidget {
  final StorageViewModel viewModel;
  const DropdownTimestamp({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      icon: const Icon(
        Icons.keyboard_arrow_down_outlined,
        size: 28,
      ),
      style: const TextStyle(color: Color(0xff22215B), fontSize: 15),
      value: viewModel.selectedTimeStamp,
      items: viewModel.timeStamp.map((item) {
        return DropdownMenuItem(value: item, child: Text(item));
      }).toList(),
      onChanged: (value) {
        viewModel.setSelectedTimeStamp(value);
      },
    );
  }
}
