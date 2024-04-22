/// @Description:
/// @Author: 歪脖子
/// @Wechat: Rean_C
/// @Email: rean0522@qq.com
/// @Date: 2024-04-06 15:39

part of 'index.dart';

class StockPage extends StatefulWidget {
  const StockPage({super.key});

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {},
          child: const Text('管理'),
        ),
        title: const TextField(
          style: TextStyle(height: 1.2),
          decoration: InputDecoration(
            hintText: '商品名称/款号/条码',
            isCollapsed: true,
            isDense: true,
            filled: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('新增'),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const BuildTotal(
            items: [
              BuildTotalItem(
                value: '0',
                text: '商品',
              ),
              BuildTotalItem(
                value: '0',
                text: '库存',
              ),
              BuildTotalItem(
                value: '0.00',
                text: '成本',
              ),
            ],
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => BuildGoods(onTap: () => context.pushNamed(Routes.goodsDetail)),
                  ),
                ),
                // SliverList.builder(
                //   itemBuilder: (context, index) {
                //     return BuildGoods(
                //       onTap: () => context.pushNamed(Routes.goodsDetail),
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
