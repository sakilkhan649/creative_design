import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/Controllers/BottomNavigationController/BottomController.dart';

class Custombottomnavigationbar extends StatelessWidget {
  final List<Widget> icons;
  final List<String> labels;

  Custombottomnavigationbar({
    required this.icons,
    required this.labels,
  });

  @override
  Widget build(BuildContext context) {
    final BottomNavController navController = Get.find<BottomNavController>();

    return LayoutBuilder(
      builder: (context, constraints) {
        final double screenWidth = constraints.maxWidth;
        final int itemCount = icons.length;

        final double horizontalPadding = screenWidth * 0.02;
        final double itemSpacing = screenWidth * 0.01;
        final double availableWidth = screenWidth - (horizontalPadding * 2);
        final double maxItemWidth =
            (availableWidth - (itemSpacing * (itemCount - 1))) / itemCount;

        final double fontSize =
        screenWidth < 360 ? 10 : (screenWidth < 400 ? 11 : 12);
        final double iconSize =
        screenWidth < 360 ? 20 : (screenWidth < 400 ? 22 : 24);
        final double containerHeight = screenWidth < 360 ? 68 : 74;

        return Container(
          height: containerHeight,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(icons.length, (index) {
                return Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () => navController.changeIndex(index),
                    child: Obx(() {
                      final bool isSelected =
                          navController.selectedIndex.value == index;
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 250),
                        constraints: BoxConstraints(maxWidth: maxItemWidth),
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth < 360 ? 4 : 6,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.green : Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: iconSize,
                              height: iconSize,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    isSelected ? Colors.white : Colors.grey,
                                    BlendMode.srcIn,
                                  ),
                                  child: icons[index],
                                ),
                              ),
                            ),
                            SizedBox(width: screenWidth < 360 ? 2 : 4),
                            Flexible(
                              child: Text(
                                labels[index],
                                style: TextStyle(
                                  fontSize: fontSize,
                                  color:
                                  isSelected ? Colors.white : Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                );
              }),
            ),
          ),
        );
      },
    );
  }
}