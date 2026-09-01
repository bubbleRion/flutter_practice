// 계단식 표기법 ..연산자

void main(){
  final items = [1,2,3,4,5];
  final items2 = [1,2,3,4,5];
  var result = items;
  result.add(6);
  result.remove(2);
  print(result);
  // 메서드를 적용한 변수를 반환한다는 느낌으로 생각하면 될듯?
  print(items..add(6)..remove(2));
  
  bool promoActive = false;

  if(promoActive){
    print([1,2,3,4,5,6]);
  }else{
    print([1,2,3,4,5]);
  }

  print([1,2,3,4,5, if (promoActive) 6]);

  var listOfInts = [1,2,3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  listOfStrings.forEach(print);

  // null 처리에 관해
  // Stirng name = null; 
  // print(name?.length);
  // print(name>.length ?? 0);
}