while (i > 0) {
  i--;
  if (i <= 2) {
    send(i);
    i--;
  } else {
    send(-i);    
  }
}
