String _name = '홍길동';
int _age = 20;
// bool b = true;
// bool b2 = i < 10;
// bool b3 = s.isEmpty;
// int i = 10;
// double d = 10.0;
// num a = 10;
// num k = 20.0;
// 변수 추론
var i = 10;
var d = 10.0;
var s = 'hello';
var s2 = "hello";
var b = true;
var b2 = i < 10;
var b3 = s.isEmpty;

int f(int x){
  return x + 10;
}
int f2(int x ,int z){
  return x + z + 10;
}
String f3(){
  return '안녕하세요';
}
void f4(int x){
  print(x);
}
greeting(String greet){
  print('hello $greet');
}


// 이것은 주석
/**
 * 이것도 주석
 */
/// 이것도 주석
void main(){
  // print('Hello, World!') 이건 에러
  // print('안녕하세요'); 이건 정상 동작, 세미콜론 여부

  var numm = 0;
  print(numm++);
  print(++numm);
  assert(2 == 2);
  assert(2 != 3);
  assert(2+3 == 5);
  print(true && true);
  print(true || true);
  print(true == true);
  print('$_name은 $_age살입니다.');
  print('$_name은 ${_name.length} 글자입니다.');
  int a = 10;
  if (a is int){
    print('정수');
  }
  // 실행 안됨
  if (a is! int){
    print('정수'); 
  }
  dynamic d = 30.5;
  num number = d;
}