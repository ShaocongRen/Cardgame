//
//  CardgameViewController.m
//  Cardgame
//
//  Created by Shaocong Ren on 2014-07-04.
//  Copyright (c) 2014 Shaocong Ren. All rights reserved.
//

#import "CardgameViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface CardgameViewController ()

@property (nonatomic, strong) Deck *deck;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButton;
@property (nonatomic, strong) CardMatchingGame *game;
@end

@implementation CardgameViewController

- (CardMatchingGame *) game{
    if (!_game) {
        _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButton count]  usingDeck:[self createDeck]];
        
    }
    return _game;
}
- (Deck *)deck{
    if (!_deck) {
        _deck = [self createDeck];
    }
    return _deck;
}

- (Deck *)createDeck{
    return [[PlayingCardDeck alloc] init];
}


- (IBAction)touchCardButton:(UIButton *)sender {
    
    NSUInteger cardIndex = [self.cardButton indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}

- (void)updateUI{
    for (UIButton *cardButton in self.cardButton) {
        int cardIndex = [self.cardButton indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
    }
    
}



- (NSString *)titleForCard:(Card *)card{
    return card.isChosen ? card.contents : @"";
}

- (UIImage *)backgroundImageForCard:(Card *)card{
    return [UIImage imageNamed:card.isChosen ? @"cardfront" : @"cardback"];
}

@end
