import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../config/colorFile.dart';

showImage({imageUrl,BuildContext? context,radiusValue}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(radiusValue?? 00 ),
    child: CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      placeholder: (context, url) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: AppColors.mainColor,
          ),
        ],
      ),
      errorWidget: (context, url, error) => Icon(Icons.error),
    ),
  );
}
