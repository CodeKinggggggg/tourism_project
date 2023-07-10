import 'package:flutter/material.dart';
import 'package:tourism_http/src/common/constants/app_color.dart';

class GridviewItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String photographer;
  final String photographyMonth;
  final void Function() onTap;

  const GridviewItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.photographer,
    required this.photographyMonth,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            maxLines: null,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: TEXT_COLOR,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '($photographer)',
            style: const TextStyle(
              fontSize: 14,
              color: DARK_GREY_COLOR,
            ),
          ),
        ],
      ),
    );
  }
}
