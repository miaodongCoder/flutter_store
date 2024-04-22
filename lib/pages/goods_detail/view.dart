/// @Description:
/// @Author: 歪脖子
/// @Wechat: Rean_C
/// @Email: rean0522@qq.com
/// @Date: 2024-04-08 18:15

part of 'index.dart';

class GoodsDetailPage extends StatelessWidget {
  const GoodsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('韩版修身牛仔裤'),
      ),
      body:  DefaultTabController(
        length: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BuildOverview(),
            TabBar(
              tabs: [
                Tab(text: '详情'),
                Tab(text: '单品'),
                Tab(text: '库存'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  BuildDetailView(),
                  BuildSpecView(),
                  BuildStockView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
