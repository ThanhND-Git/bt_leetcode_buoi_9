// https://leetcode.com/problems/baseball-game/description/
void main(List<String> args) {
  print(calPoints(["5", "2", "C", "D", "+"]));
  print(calPoints(["5", "-2", "4", "C", "D", "9", "+", "+"]));
  print(calPoints(["1", "C"]));
}

int calPoints(List<String> operations) {
  List<int> listPoint = [];
  for (String s in operations) {
    // TH: lệnh là +
    if (s == '+') {
      int a = listPoint.removeLast();
      int newPoint = a + listPoint.last;
      listPoint.add(a);
      listPoint.add(newPoint);
    } 
    // TH: lệnh là D
    else if (s == "D") {
      listPoint.add(listPoint.last * 2);
    }
    // TH: lệnh là C
    else if (s == "C") {
      listPoint.removeLast();
    } 
    // TH: là số
    else {
      listPoint.add(int.parse(s));
    }
  }

  int sum = 0;
  // nếu list ko rỗng thì tính tổng, ngược lại trả lại 0
  while (listPoint.isNotEmpty) {
    sum += listPoint.removeLast();
  }

  return sum;
}
