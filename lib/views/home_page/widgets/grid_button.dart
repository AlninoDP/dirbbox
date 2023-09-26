import 'package:dirbbox/viewmodels/storage_viewmodel.dart';
import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  final IconData icon;
  final StorageViewModel storageViewModel;
  final Color color;
  const GridButton(
      {super.key,
      required this.icon,
      required this.storageViewModel,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        storageViewModel.changeMenuToList();
      },
      child: Icon(
        icon,
        size: 27,
        color: color,
      ),
    );
  }
}
