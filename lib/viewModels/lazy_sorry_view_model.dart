import '../models/deck.dart';

class LazySorryViewModel {
  static final int drawCooldown = 750;

  Deck deck;
  String topCard = "back_of_card";
  List<String> drawnCards;
  int lastDraw = (new DateTime.now()).millisecondsSinceEpoch;

  LazySorryViewModel() {
    this.deck = Deck();
    this.drawnCards = [
      "back_of_card", "back_of_card", "back_of_card", "back_of_card",
      "back_of_card", "back_of_card", "back_of_card"
    ];
  }


  bool drawCardTrigger() {
    if (!this.isDrawCooledDown()) {
      // should vibrate the phone to indicate cooldown not ready yet
      return false;
    }

    // make sure the deck is not empty
    if (this.deck.isPlayingDeckEmpty()) {
      this.deck.newPlayingDeck();
      this.playShuffleSound();
    } else {
      this.playDrawSound();
    }

    // draw a card
    this.drawnCards.add(this.topCard);
    this.topCard = this.deck.drawCard();
    this.drawnCards.removeAt(0);
    this.lastDraw = (new DateTime.now()).millisecondsSinceEpoch;
    return true;
  }

  bool isDrawCooledDown() {
   return ((new DateTime.now()).millisecondsSinceEpoch - this.lastDraw) >= LazySorryViewModel.drawCooldown;
  }

  // https://www.hackingwithswift.com/example-code/media/how-to-play-sounds-using-avaudioplayer
  void playShuffleSound() {
    return;
  }

  void playDrawSound() {
    return;
  }
}