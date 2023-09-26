import 'package:flutter/material.dart';

class StorageContainer extends StatelessWidget {
  final Color containerColor;
  final Color color;
  final String tittle;
  final String date;
  const StorageContainer(
      {super.key,
      required this.containerColor,
      required this.color,
      required this.date,
      required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.folder,
                color: color,
                size: 60,
              ),
              const Icon(
                Icons.more_vert,
                size: 30,
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            tittle,
            style: TextStyle(color: color, fontSize: 15),
          ),
          Text(
            date,
            style: TextStyle(color: color, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
