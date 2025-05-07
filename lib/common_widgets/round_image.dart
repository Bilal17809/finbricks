
import 'package:flutter/material.dart';

// class RoundedImage extends StatelessWidget {
//   final String assetPath;
//   final double size;
//   final bool showIcon;
//
//   const RoundedImage({
//     super.key,
//     required this.size,
//     required this.assetPath,
//     this.showIcon = false,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: size,
//       height: size,
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Container(
//             width: size,
//             height: size,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               image: DecorationImage(
//                 image: AssetImage(assetPath),
//                 fit: BoxFit.cover,
//               ),
//               border: Border.all(
//                 color: skyColor,
//                 width: 4,
//               ),
//             ),
//           ),
//           if (showIcon) ...[
//             Positioned(
//               bottom: 5,
//               right: 0,
//               child: Icon(
//                 Icons.add_circle,
//                 color: skyColor,
//               ),
//             ),
//           ]
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter_svg/flutter_svg.dart';

import '../core/theme/app_colors.dart'; // don't forget to import

class RoundedImage extends StatelessWidget {
  final String assetPath;
  final double size;
  final bool showIcon;

  const RoundedImage({
    super.key,
    required this.size,
    required this.assetPath,
    this.showIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: skyColor,
                width: 4,
              ),
            ),
            child: ClipOval(
              child: SvgPicture.asset(
                assetPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (showIcon) ...[
            Positioned(
              bottom: 5,
              right: 0,
              child: Icon(
                Icons.add_circle,
                color: skyColor,
              ),
            ),
          ]
        ],
      ),
    );
  }
}
