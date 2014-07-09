//
//  PlayingCardDeck.m
//  Cardgame
//
//  Created by Shaocong Ren on 2014-07-07.
//  Copyright (c) 2014 Shaocong Ren. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype)init{
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init ];
                card.suit = suit;
                card.rank = rank;
                
                [self addCard:card];
            }
        }
    }
    
    return self;
}

@end
