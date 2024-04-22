/// @Description:
/// @Author: 歪脖子
/// @Wechat: Rean_C
/// @Email: rean0522@qq.com
/// @Date: 2024-04-08 20:28

part of '../index.dart';

class BuildOverview extends StatelessWidget {
  const BuildOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      minimum: const EdgeInsets.all(16).copyWith(bottom: 0),
      child: Row(
        children: [
          SizedBox.square(
            dimension: 100,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(width: 15),
           Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('款号：xxxxxxx'),
                SizedBox(height: 3),
                Text('条码：xxxxxxx'),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('0'),
                          Text(
                            '成本价',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('0'),
                          Text(
                            '零售价',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('0'),
                          Text(
                            '销量',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
