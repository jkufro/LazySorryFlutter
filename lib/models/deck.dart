
class Deck {
  List<String> _playingDeck;

  static List<String> generateDeck() {
    return [
      "1", "1", "1", "1", "1",
      "2", "2", "2", "2",
      "3", "3", "3", "3",
      "4", "4", "4", "4",
      "5", "5", "5", "5",
      "7", "7", "7", "7",
      "8", "8", "8", "8",
      "10", "10", "10", "10",
      "11", "11", "11", "11",
      "12", "12", "12", "12",
      "sorry", "sorry", "sorry", "sorry",
    ];
  }

  Deck() {
    _playingDeck = generateDeck();
  }

  bool isPlayingDeckEmpty() {
  return this._playingDeck.length == 0;
  }

  void newPlayingDeck() {
    this._playingDeck = generateDeck();
    this._playingDeck.shuffle();
  }

  String drawCard() {
  if (this.isPlayingDeckEmpty()) {
    return "";
  }
  String firstElement = this._playingDeck[0];
  this._playingDeck.remove(0);
  return firstElement;
  }

  int numPlayingCardsLeft() {
  return this._playingDeck.length;
  }
}