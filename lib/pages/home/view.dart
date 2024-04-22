/// @Description:
/// @Author: 歪脖子
/// @Wechat: Rean_C
/// @Email: rean0522@qq.com
/// @Date: 2024-04-06 14:15

part of 'index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const BuildShopInfo(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const BuildToday(),
              const SizedBox(height: 20),
              BuildMenu(
                items: [
                  BuildMenuItem(
                    icon: const Icon(Icons.add_circle_outline),
                    text: '采购进货',
                    onTap: () {},
                  ),
                  BuildMenuItem(
                    icon: const Icon(Icons.add_circle_outline),
                    text: '库存查询',
                    onTap: () {},
                  ),
                  BuildMenuItem(
                    icon: const Icon(Icons.add_circle_outline),
                    text: '订单管理',
                    onTap: () {},
                  ),
                  BuildMenuItem(
                    icon: const Icon(Icons.add_circle_outline),
                    text: '供应商',
                    onTap: () {},
                  ),
                  BuildMenuItem(
                    icon: const Icon(Icons.add_circle_outline),
                    text: '标签打印',
                    onTap: () {},
                  ),
                  BuildMenuItem(
                    icon: const Icon(Icons.add_circle_outline),
                    text: '更多功能',
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
