class EggCounter {
  int count(int eggs) {
    int num_eggs = 0;
    while (eggs / 2 != 0) {
      num_eggs += eggs % 2;
      eggs ~/= 2;
    }
    return num_eggs;
  }
}
