// https://leetcode.com/problems/day-of-the-year/
void main(List<String> args) {
  print(dayOfYear("2019-01-09"));
  print(dayOfYear("2019-02-10"));
}

int dayOfYear(String date) {
  int year = int.parse(date.substring(0, 4));
  int month = int.parse(date.substring(5, 7));
  int day = int.parse(date.substring(8));
  List<int> daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  var leapYear = false; // năm nhuận
  // các năm chia hết cho 100 mà không chia hết cho 400 là năm không nhuận
  // năm chia hết cho 4 là năm nhuận
  if (year % 100 == 0) {
    leapYear = year % 400 == 0;
  } else if (year % 4 == 0) {
    leapYear = true;
  }

  // thêm ngày nhuận nếu đó là năm nhuận
  int leapDays; 
  if (leapYear && month > 2) {
    leapDays = 1;
  } else {
    leapDays = 0;
  }
  for (int i = 1; i < month; i++) {
    leapDays += daysInMonth[i - 1];
  }

  return leapDays + day;
}
