import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class BookshelfPage extends StatefulWidget {
  const BookshelfPage({super.key});

  @override
  State<BookshelfPage> createState() => _BookshelfPageState();
}

class _BookshelfPageState extends State<BookshelfPage> {
  final double _navAlpha = 0.0;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  /// Function Syntax
  ///下拉刷新
  void _onRefresh() {
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: _navAlpha > 0.5
          ? SystemUiOverlayStyle.dark
          : SystemUiOverlayStyle.light,
      child: Stack(
        children: [_customContentView(), _customNavigatonBar()],
      ),
    );
  }

  /// UI Syntax
  ///
  Widget _customNavigatonBar() {
    return Positioned(child: Stack());
  }

  Widget _customContentView() {
    return SmartRefresher(
        enablePullDown: true,
        // enablePullUp: true,
        // enableTwoLevel: true,
        controller: _refreshController,
        onRefresh: _onRefresh,
        // onLoading: controller.onLoad,
        // onTwoLevel: (isOpen) {},
        // header: ClassicFooter(),
        header: const WaterDropMaterialHeader(
          color: Colors.white,
          // backgroundColor: DoColors.theme,
        ),
        child: ListView());
  }
}
