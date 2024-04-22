/// @Description:
/// @Author: 歪脖子
/// @Wechat: Rean_C
/// @Email: rean0522@qq.com
/// @Date: 2024-04-06 15:06

part of '../index.dart';

class BuildShopInfo extends StatelessWidget {
  const BuildShopInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FlutterLogo(size: 40),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '小二班童装',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '歪脖子(老板)',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
