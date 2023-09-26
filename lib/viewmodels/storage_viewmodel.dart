import 'package:dirbbox/models/storage.dart';
import 'package:flutter/material.dart';

class StorageViewModel extends ChangeNotifier {
  List<Storage> storages = [
    Storage(
      id: 1,
      storageTittle: 'Mobile Apps',
      storageDate: 'December 20.2020',
      color: const Color(0xff415EB6),
    ),
    Storage(
      id: 2,
      storageTittle: 'SVG Icons',
      storageDate: 'December 14.2020',
      color: const Color(0xffFFB110),
    ),
    Storage(
      id: 3,
      storageTittle: 'Prototypes',
      storageDate: 'November 22.2020',
      color: const Color(0xffAC4040),
    ),
    Storage(
      id: 4,
      storageTittle: 'Avatars',
      storageDate: 'November 10.2020',
      color: const Color(0xff23B0B0),
    ),
    Storage(
      id: 5,
      storageTittle: 'Design',
      storageDate: 'December 20.2020',
      color: const Color(0xff415EB6),
    ),
    Storage(
      id: 6,
      storageTittle: 'Portofolio',
      storageDate: 'December 14.2020',
      color: const Color(0xffFFB110),
    ),
    Storage(
      id: 7,
      storageTittle: 'References',
      storageDate: 'November 22.2020',
      color: const Color(0xffFFB110),
    ),
    Storage(
      id: 8,
      storageTittle: 'Clients',
      storageDate: 'November 10.2020',
      color: const Color(0xff23B0B0),
    ),
  ];
}
