/// @Description:
/// @Author: 歪脖子
/// @Wechat: Rean_C
/// @Email: rean0522@qq.com
/// @Date: 2024-04-11 12:32

part of '../index.dart';

class BuildDetailView extends StatelessWidget {
  const BuildDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        minimum: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('所属类目'),
                Text('衣服'),
              ],
            ),
            const Divider(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('品牌'),
                Text('xxxx'),
              ],
            ),
            const Divider(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('供应商'),
                Text('xxxx'),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('自定义属性'),
                Text('xxxx'),
              ],
            ),
            const Divider(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('自定义属性'),
                Text('xxxx'),
              ],
            ),
            const Divider(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                Text('自定义属性'),
                Text('xxxx'),
              ],
            ),
            Divider(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                Text('自定义属性'),
                Text('xxxx'),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                Text('备注信息'),
                Text('xxxx'),
              ],
            ),
            Divider(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                Text('创建时间'),
                Text('2020-01-01'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
