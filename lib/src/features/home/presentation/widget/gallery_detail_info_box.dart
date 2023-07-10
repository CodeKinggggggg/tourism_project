import 'package:flutter/cupertino.dart';
import 'package:tourism_http/src/common/constants/app_color.dart';

class GalleryDetailInfoBox extends StatelessWidget {
  final String title;
  final String location;
  final String photographer;
  final String photographyMonth;

  const GalleryDetailInfoBox({
    super.key,
    required this.title,
    required this.location,
    required this.photographer,
    required this.photographyMonth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                CupertinoIcons.location_solid,
                size: 18,
                color: DARK_GREY_COLOR,
              ),
              const SizedBox(width: 3),
              Text(
                location,
                style: const TextStyle(
                  fontSize: 18,
                  color: DARK_GREY_COLOR,
                  height: 1.35,
                ),
              ),
            ],
          ),
          const SizedBox(height: 21),
          Text(
            title,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 23,
              color: TEXT_COLOR,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 21),
          Text(
            '$photographer, $photographyMonth',
            style: const TextStyle(
              fontSize: 18,
              color: GREY_COLOR,
            ),
          ),
        ],
      ),
    );
  }
}
