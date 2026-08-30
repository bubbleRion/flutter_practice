
// void main(){
//   String text = 'hello';

//   if (text is int){
//     print('정수');
//   }  else if(text is double){
//     print('실수');
//   }else{
//     print('정수도 실수도 아님');
//   }
// }

enum Status {Uninitailized, Authenticated, Authenticating, Unauthenticated}

void main(){
  var status = Status.Authenticated;
  switch (status){
    case Status.Authenticated:
      print('인증됨');
      break;
    case Status.Authenticating:
      print('인증 처리 중');
      break;
    case Status.Unauthenticated:
      print('미인증');
      break;
    case Status.Uninitailized:
      print('초기화됨');
      break;
  }
  var items = ['짜장' , '라면', '볶음밥'];

  for (var i = 0; i < items.length; i++){
    print(items[i]);
  }

  
}