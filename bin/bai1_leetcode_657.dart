// https://leetcode.com/problems/robot-return-to-origin/description/
void main(List<String> args) {
  print(judgeCircle("UD"));
  print(judgeCircle("LL"));
}

bool judgeCircle(String moves) {
  // trục x, y
  int x = 0, y = 0;
  // Chạy các bước theo chỉ lệnh: 'R' (x + 1), 'L' (x - 1), 'U' (y + 1), and 'D' (y - 1).
  for (var element in moves.split('')) {
    if (element == 'U') {
      y++;
    } else if (element == 'D') {
      y--;
    } else if (element == 'R') {
      x++;
    } else if (element == 'L') {
      x--;
    }
  }
  // sau khi chay các bước đi robot vẫn ở tọa độ x = 0 và y=0 thì trả về true và ngược lại
  return x == 0 && y == 0;
}
