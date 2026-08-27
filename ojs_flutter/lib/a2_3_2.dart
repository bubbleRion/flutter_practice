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

// assert(2+3 == 5); 안됨(버전문제?)
// print(true && true); 안됨
// print(true || true); 안됨
// print(true == true); 안됨

// 이것은 주석
/**
 * 이것도 주석
 */
/// 이것도 주석
void main(){
  // print('Hello, World!') 이건 에러
  // print('안녕하세요'); 이건 정상 동작, 세미콜론 여부


  print('$_name은 $_age살입니다.');
  print('$_name은 ${_name.length} 글자입니다.');

}