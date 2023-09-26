import 'package:dirbbox/viewmodels/storage_viewmodel.dart';
import 'package:dirbbox/views/home_page/widgets/dropdown_timestamp.dart';
import 'package:dirbbox/views/home_page/widgets/grid_button.dart';
import 'package:dirbbox/views/home_page/widgets/grid_menu.dart';
import 'package:dirbbox/views/home_page/widgets/list_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final storageViewModel = Provider.of<StorageViewModel>(context);
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Your Dribbox',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color(0xff22215B)),
                ),
                Image.asset('assets/images/four_dots.png'),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 315,
              height: 55,
              child: TextField(
                style: const TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  prefixIcon: const Icon(Icons.search, size: 30),
                  hintText: 'Search Folder',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Color(0xff22215B),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Color(0xffEEF2FE), width: 3)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownTimestamp(viewModel: storageViewModel),
                Row(
                  children: [
                    GridButton(
                      icon: Icons.menu,
                      storageViewModel: storageViewModel,
                      color: storageViewModel.isListMenu
                          ? const Color(0xff22215B)
                          : const Color(0xffB0C0D0),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GridButton(
                      icon: Icons.window_outlined,
                      storageViewModel: storageViewModel,
                      color: storageViewModel.isListMenu
                          ? const Color(0xffB0C0D0)
                          : const Color(0xff22215B),
                    )
                  ],
                )
              ],
            ),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: storageViewModel.isListMenu
                    ? ListMenu(storageViewModel: storageViewModel)
                    : GridMenu(storageViewModel: storageViewModel),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff22215B),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Color(0xffffffff),
          )),
    ));
  }
}
