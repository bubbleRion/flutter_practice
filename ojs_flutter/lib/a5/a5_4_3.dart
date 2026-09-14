// 5.4.3 SilverAppBar와 SilverFillRemaining
// SilverAppBar와 SilverFillRemaining은 화면 헤더를 동적으로 표현하는 위젯이다.
// 헤더를 위로 스크롤하면 헤더 부분이 작아지면서 헤더 하단에 있던 정적인 내용만 보이는
// AppBar 형태로 애니메이션 된다. 이런 효과를 Silver 효과라 부른다고 하겠다.

import 'package:flutter/material.dart';

class SilverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body : CustomScrollView(
        slivers: <Widget>[
          SliverAppBar( // 헤더 영역
            pinned: true, // 축소시 상단에 AppBar가 고정되는지 설정
            expandedHeight: 100.0, // 헤더의 최대 높이
            flexibleSpace: FlexibleSpaceBar( // 늘어나는 영역의 UI 정의
              title: Text('Sliver'),
              background: Image.asset(
                'aseets/sample.jpg',
                fit : BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining( // 내용영역
            child : Center(child: Text('center')),
          ),
        ],
      )
    );
  }
}

// SilverAppBar 