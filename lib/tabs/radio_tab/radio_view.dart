import 'package:flutter/material.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/widgets/media_card.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              MediaCard(
                title: 'Radio Ibrahim ',
                bgImage: Assets.images.mosqueBg.path,
                firstIcon: Icons.play_arrow,
                secondIcon: Icons.volume_up,
              ),
              SizedBox(height: 8),
              MediaCard(
                title: 'Radio Ibrahim ',
                bgImage: Assets.images.waveBg.path,
                firstIcon: Icons.play_arrow,
                secondIcon: Icons.volume_mute_outlined,
              ),
              SizedBox(height: 8),
              MediaCard(
                title: 'Radio Ibrahim ',
                bgImage: Assets.images.mosqueBg.path,
                firstIcon: Icons.play_arrow,
                secondIcon: Icons.volume_up,
              ),
              SizedBox(height: 8),
              MediaCard(
                title: 'Radio Ibrahim ',
                bgImage: Assets.images.waveBg.path,
                firstIcon: Icons.play_arrow,
                secondIcon: Icons.volume_mute_outlined,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
