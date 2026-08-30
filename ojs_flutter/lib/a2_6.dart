void main(){
  List<String> items = ['짜장', '라면' , '볶음밥'];
  var items2 = ['짜장', '라면' , '볶음밥'];
  items[0] = '떡볶이';

  print(items.length); // 3
  print(items[2]); // 볶음밥
  // print(items[3]); 에러

  for(var i = 0; i < items.length; i++){
    print(items[i]);
  }

  var items3 = ['떡볶이', ...items, '순대'];

  final items4 = [1,2,2,3,3,4,5];
  final myNumber = {...items, 6 , 7};
  print(myNumber);

  // Map
  var cityMap = {
    '한국': '부산',
    '일본': '도쿄',
    '중국': '북경'
  };

  cityMap['한국'] = '서울';

  print(cityMap.length); // 3
  print(cityMap['중국']); // 북경
  print(cityMap['미국']); // 에러
  cityMap['미국'] = '워싱턴';
  print(cityMap['미국']); // 워싱턴

  var citySet = {'서울' , '수원' , '오산' , '부산'};

  citySet.add('안양');
  citySet.remove('수원');

  print(citySet.contains('서울')); // T
  print(citySet.contains('도쿄')); // F
}