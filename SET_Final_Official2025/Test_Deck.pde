public class TestDeck extends Deck {
  public void initDeck() {
    // These positions in the sprite sheet will not produce a set
    // Index 3 means row 0, column 3
    int[] noSetIndices = { 0, 1, 3, 4, 9, 10, 12, 13, 27, 28, 30, 31, 36, 37, 39, 40 };

    for (int col = 0; col < SHEET_LENGTH; col++) {
      for (int row = 0; row < SHEET_LENGTH; row++) {
        if (!(member(row + col*SHEET_LENGTH, noSetIndices))) {
          cards.add(new Card(col, row));
        }
      }
    }
    
    for (int i = noSetIndices.length-1; i >= 0; i--) {
      cards.add(0, new Card(noSetIndices[i]/SHEET_LENGTH, noSetIndices[i]%SHEET_LENGTH));
    }
    
    System.out.println(cards);    
  }
}
