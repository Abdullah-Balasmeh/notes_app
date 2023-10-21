import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 16,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffFFCD7B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'Build your Career with Abdullah Balasmeh',
                style: TextStyle(color: Colors.black54, fontSize: 18),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 24, top: 16),
            child: Text('October 21 ,2023',
                style: TextStyle(color: Colors.black54)),
          )
        ],
      ),
    );
  }
}
