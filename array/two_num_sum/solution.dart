void main() async {
  final result = findNumbers2([1, 2, 3, 4, 5, 6], 8);
  print(result);
}

//Solution 1: Not Optimised
List<int> findNumbers(List<int> arrayList, int targetSum) {
  for (int i = 0; i < arrayList.length; i++) {
    for (int j = i + 1; j < arrayList.length; j++) {
      // print("Num 1: ${arrayList[i]}");
      // print("Num 2: ${arrayList[j]}");
      // print("Sum: ${arrayList[i] + arrayList[j]}");

      if (arrayList[i] + arrayList[j] == targetSum) {
        return [arrayList[i], arrayList[j]];
      }
    }
  }
  return [];
}

//Solution 2: Optimise Solution
List<int> findNumbers2(List<int> arrayList, int targetSum) {
  Map<int, bool> tempMap = <int, bool>{};

  for (int i = 0; i < arrayList.length; i++) {
    final int requiredNum = targetSum - arrayList[i];

    // print("requiredNum: $requiredNum");
    // print("tempMap: $tempMap");

    if (tempMap[requiredNum] != null) {
      return [requiredNum, arrayList[i]];
    } else {
      tempMap.addAll({arrayList[i]: true});
      // print("tempMap2: $tempMap");
    }
  }
  return [];
}
