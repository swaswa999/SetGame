// NOTE: All of the methods in this tab have "return false" stubs
// that need to be replaced with more appropriate code.

boolean allSame(int a, int b, int c) {
  return (a == b) && (b == c);
}

boolean allDifferent(int a, int b, int c) {
  return (a != b) && (b != c) && (a != c);
}

boolean sameColor(Card a, Card b, Card c) {
  int colorA = a.getCol() % 3;
  int colorB = b.getCol() % 3;
  int colorC = c.getCol() % 3;
  return allSame(colorA, colorB, colorC);
}

boolean sameShape(Card a, Card b, Card c) {
  int shapeA = a.getRow() % 3;
  int shapeB = b.getRow() % 3;
  int shapeC = c.getRow() % 3;
  return allSame(shapeA, shapeB, shapeC);
}

boolean sameFill(Card a, Card b, Card c) {
  int fillA = a.getRow() / 3;
  int fillB = b.getRow() / 3;
  int fillC = c.getRow() / 3;
  return allSame(fillA, fillB, fillC);
}

boolean sameCount(Card a, Card b, Card c) {
  int countA = a.getCol() / 3;
  int countB = b.getCol() / 3;
  int countC = c.getCol() / 3;
  return allSame(countA, countB, countC);
}

boolean diffColor(Card a, Card b, Card c) {
  // Color is determined by col % 3
  int colorA = a.getCol() % 3;
  int colorB = b.getCol() % 3;
  int colorC = c.getCol() % 3;
  return allDifferent(colorA, colorB, colorC);
}

boolean diffShape(Card a, Card b, Card c) {
  // Shape is determined by row % 3
  int shapeA = a.getRow() % 3;
  int shapeB = b.getRow() % 3;
  int shapeC = c.getRow() % 3;
  return allDifferent(shapeA, shapeB, shapeC);
}

boolean diffFill(Card a, Card b, Card c) {
  // Fill is determined by row / 3
  int fillA = a.getRow() / 3;
  int fillB = b.getRow() / 3;
  int fillC = c.getRow() / 3;
  return allDifferent(fillA, fillB, fillC);
}

boolean diffCount(Card a, Card b, Card c) {
  // Count is determined by col / 3
  int countA = a.getCol() / 3;
  int countB = b.getCol() / 3;
  int countC = c.getCol() / 3;
  return allDifferent(countA, countB, countC);
}

boolean isSet(Card a, Card b, Card c) {
  if (a == null || b == null || c == null) return false;
  return (sameColor(a, b, c) || diffColor(a, b, c)) &&
         (sameShape(a, b, c) || diffShape(a, b, c)) &&
         (sameFill(a, b, c) || diffFill(a, b, c)) &&
         (sameCount(a, b, c) || diffCount(a, b, c));
}
