while (b != 0) {
  if (a > b) {
    a = a - b;
  } else {
    b = b - a;
  }
}
return a;
