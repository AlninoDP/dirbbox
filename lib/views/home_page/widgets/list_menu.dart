import 'package:dirbbox/viewmodels/storage_viewmodel.dart';
import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {
  final StorageViewModel storageViewModel;
  const ListMenu({super.key, required this.storageViewModel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: storageViewModel.storages.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            tileColor: storageViewModel.storages[index].containerColor!,
            leading: Icon(
              Icons.folder,
              color: storageViewModel.storages[index].color,
              size: 40,
            ),
            title: Text(
              storageViewModel.storages[index].storageTittle,
              style: TextStyle(
                  color: storageViewModel.storages[index].color, fontSize: 20),
            ),
            subtitle: Text(
              storageViewModel.storages[index].storageDate,
              style: TextStyle(
                  color: storageViewModel.storages[index].color, fontSize: 15),
            ),
            trailing: const Icon(
              Icons.more_vert,
              size: 30,
            ),
          ),
        );
      },
    );
  }
}
