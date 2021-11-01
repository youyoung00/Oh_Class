void main() {
   email('lll@jjj.com', title: '코딩', text: '코딩은 재미있어');
}

void email(String address, {String title, String text}) {
  print('$address 에 아래의 메일을 송신한다.');
  print('제목 : $title');
  print('본문 : $text');
}
