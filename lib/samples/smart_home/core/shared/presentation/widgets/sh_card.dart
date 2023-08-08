import 'package:flutter/material.dart';
import 'package:flutter_samples/samples/smart_home/core/shared/presentation/widgets/sh_divider.dart';
import 'package:flutter_samples/samples/smart_home/core/theme/sh_colors.dart';
import 'package:ui_common/ui_common.dart';

class SHCard extends StatelessWidget {
  const SHCard({
    super.key,
    this.height,
    this.children = const [],
    this.childrenPadding = EdgeInsets.zero,
  });

  final double? height;
  final List<Widget> children;
  final EdgeInsets childrenPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: SHColors.cardColors,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 20,
            offset: Offset(-10, 10),
          )
        ],
        borderRadius: 12.borderRadiusA,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int index = 0; index < children.length; index++) ...[
            Padding(
              padding: childrenPadding,
              child: children[index],
            ),
            if (index < children.length - 1) const SHDivider(),
          ]
        ],
      ),
    );
  }
}
