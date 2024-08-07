import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YtPlayerWidget extends StatefulWidget {
  const YtPlayerWidget({
    super.key,
    required this.trailerId,
  });

  final String trailerId;

  @override
  State<YtPlayerWidget> createState() => _YtPlayerWidgetState();
}

class _YtPlayerWidgetState extends State<YtPlayerWidget> {
  late YoutubePlayerController controller;
  bool showPlayer = true;

  @override
  void initState() {
    super.initState();
    controller = YoutubePlayerController(
      initialVideoId: widget.trailerId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        disableDragSeek: true,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return showPlayer
        ? PopScope(
            canPop: true,
            onPopInvoked: (_) {
              if (mounted) {
                setState(() {
                  controller.pause();
                  showPlayer = false;
                });
              }
              return;
            },
            child: YoutubePlayer(
              controller: controller,
              showVideoProgressIndicator: true,
              thumbnail: const SizedBox.shrink(),
              progressIndicatorColor: Theme.of(context).colorScheme.tertiary,
              progressColors: ProgressBarColors(
                playedColor: Theme.of(context).colorScheme.tertiary,
                handleColor: Theme.of(context).colorScheme.tertiary,
              ),
              bottomActions: [
                CurrentPosition(),
                ProgressBar(isExpanded: true),
                RemainingDuration(),
              ],
              aspectRatio: 16 / 9,
            ),
          )
        : const SizedBox(height: 0.3, width: 1);
  }
}
