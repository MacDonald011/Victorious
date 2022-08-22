import 'package:flutter/material.dart';

class PackageCard extends StatelessWidget {
  final String CardName;
  final String CardTitle;
  final String word;

  PackageCard({
    required this.CardName,
    required this.CardTitle,
    required this.word,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding: EdgeInsets.all(12),
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    child: const Icon(
                      Icons.star,
                      size: 50,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                        color: Colors.blue,
                        padding: EdgeInsets.all(5),
                        child: const Text(
                          'Package',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(CardName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    )),
              ),
              Text(word),
            ],
          ),
        ),
      ),
    );
  }
}
