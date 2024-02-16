import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int numberOfUser = 2;
    List<Widget> avater = [];
    const avatarWidth = 40.0;
    const overlayWidth = -10.0;

    for (int i = 0; i < numberOfUser; i++) {
      avater.add(
        Positioned(
          right: (avatarWidth - overlayWidth) * i,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://source.unsplash.com/60x60',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Text(
                'Name',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const ClampingScrollPhysics(),
      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            SizedBox(
              width: (avatarWidth - overlayWidth) * numberOfUser + 70,
              child: Stack(children: avater),
            ),
            const CircularButton(),
          ],
        ),
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  const CircularButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(-20, -15),
      child: Container(
        width: 70,
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.add,
          size: 35,
          color: Colors.white,
        ),
      ),
    );
  }
}
