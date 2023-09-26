import 'package:dirbbox/viewmodels/storage_viewmodel.dart';
import 'package:dirbbox/views/home_page/widgets/storage_container.dart';
import 'package:flutter/material.dart';

class GridMenu extends StatelessWidget {
  final StorageViewModel storageViewModel;
  const GridMenu({super.key, required this.storageViewModel});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: storageViewModel.storages.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 140,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20),
      itemBuilder: (context, index) {
        return StorageContainer(
            containerColor: storageViewModel.storages[index].containerColor!,
            color: storageViewModel.storages[index].color,
            date: storageViewModel.storages[index].storageDate,
            tittle: storageViewModel.storages[index].storageTittle);
      },
    );
  }
}
