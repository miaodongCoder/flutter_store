/// @Description:
/// @Author: 歪脖子
/// @Wechat: Rean_C
/// @Email: rean0522@qq.com
/// @Date: 2024-04-06 15:05

part of '../index.dart';

class BuildMenu extends StatelessWidget {
  final List<BuildMenuItem> items;

  const BuildMenu({
    super.key,
    this.items = const [],
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth = constraints.maxWidth / 4;
        return Wrap(
          runSpacing: 10,
          children: items.map((item) {
            return SizedBox(
              width: itemWidth,
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: item.onTap,
                child: Column(
                  children: [
                    item.icon,
                    const SizedBox(height: 5),
                    Text(item.text),
                  ],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}

class BuildMenuItem {
  final Widget icon;
  final String text;
  final void Function()? onTap;

  const BuildMenuItem({
    required this.icon,
    required this.text,
    this.onTap,
  });
}
