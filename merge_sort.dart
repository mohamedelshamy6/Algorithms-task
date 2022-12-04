void main() {
  print(megreSort([1,88, 9, 3,16,22,5,3.5,2,-5,34,2.25]));
}

List<num> merge(List firstList, List secondList) {
  List<num> mergedList = [];
  int indexOfList1 = 0;
  int indexOfList2 = 0;

  while (indexOfList1 < firstList.length && indexOfList2 < secondList.length) {
    if (secondList[indexOfList2] > firstList[indexOfList1]) {
      mergedList.add(firstList[indexOfList1]);
      indexOfList1++;
    } else {
      mergedList.add(secondList[indexOfList2]);
      indexOfList2++;
    }
  }
  while (indexOfList1 < firstList.length) {
    mergedList.add(firstList[indexOfList1]);
    indexOfList1++;
  }
  while (indexOfList2 < secondList.length) {
    mergedList.add(secondList[indexOfList2]);
    indexOfList2++;
  }

  return mergedList;
}

List<num> megreSort(List<num> list) {
  if (list.length <= 1) return list;
  int middleIndex = (list.length / 2).floor();
  List<num> rightList = megreSort(list.sublist(middleIndex));
  List<num> leftList = megreSort(list.sublist(0, middleIndex));
 return merge(leftList, rightList);
}
