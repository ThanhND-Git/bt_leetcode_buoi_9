// https://leetcode.com/problems/nim-game/
void main(List<String> args) {
  print(canWinNim(4));
  print(canWinNim(2));
  print(canWinNim(10));
}
bool canWinNim(int n) {
  // nếu n chia hết cho 4 thì luôn thua và ngược lại
  return n % 4 != 0;
}