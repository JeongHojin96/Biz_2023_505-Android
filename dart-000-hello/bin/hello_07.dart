String stdFunc(String nation) {
  return nation.toLowerCase();
}

String arrowFunc(String nation) => nation.toUpperCase();

int stdSum(int num1, int num2) {
  int sum = num1 + num2;
  return sum;
}

String? strFunc(String? name) => name?.toUpperCase() ?? null;
String? stdNullFunc(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  return null;
}

String arrowNotNullFunc(String? name) => name?.toUpperCase() ?? "NOT FOUND";
