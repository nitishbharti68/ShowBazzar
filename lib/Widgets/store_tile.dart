import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:show_bazzar/Stream//stream_components/stream_colors.dart';
import 'package:show_bazzar/Stream/stream_pages/creator_profile.dart';
import 'package:show_bazzar/Widgets/store.dart';


class StoreTile extends StatelessWidget {
  Store store;
  StoreTile({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      decoration: const BoxDecoration(color: StremColors.streamBackground),
      child: GestureDetector(
        onTap: () {

        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
              child: Image.asset(
                store.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              truncateProfileName(store.Name),
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
