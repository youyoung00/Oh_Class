void main() {
   email('lll@jjj.com', text: '코딩은 재미있어');
}

void email(String address, {String title, String text}) {
  String titleResult = title;

  if(title == null) {
    titleResult = '제목없음';
  }

  print('$address 에 아래의 메일을 송신한다.');
  print('제목 : $titleResult');
  print('본문 : $text');
}
