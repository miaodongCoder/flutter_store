/// @Description:
/// @Author: 歪脖子
/// @Wechat: Rean_C
/// @Email: rean0522@qq.com
/// @Date: 2024-04-06 20:38

part of '../index.dart';

class BuildTotal extends StatelessWidget {
  final List<BuildTotalItem> items;

  const BuildTotal({
    super.key,
    this.items = const [],
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: items.map((item) {
          return Expanded(
            child: Column(
              children: [
                Text(
                  item.value,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  item.text,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class BuildTotalItem {
  final String value;
  final String text;

  const BuildTotalItem({
    required this.value,
    required this.text,
  });
}
