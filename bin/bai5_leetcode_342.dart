// https://leetcode.com/problems/power-of-four/
void main(List<String> args) {
  print(isPowerOfFour(16));
  print(isPowerOfFour(132));
  print(isPowerOfFour(256));
}

bool isPowerOfFour(int n) {
  // n <= 0 thì trả lại false
  if (n <= 0) {
    return false;
  }
  // n = 1 thì trả lại true
  if (n == 1) {
    return true;
  }
  // kiểm tra xem có phải lũy thừa của 4 hay không
  while (n >= 4) {
    if (n % 4 == 0) {
      n = n ~/ 4;
    } else {
      return false;
    }
  }
  return n == 1; 
}
