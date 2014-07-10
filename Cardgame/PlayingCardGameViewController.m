//
//  PlayingCardGameViewController.m
//  Cardgame
//
//  Created by Shaocong Ren on 2014-07-10.
//  Copyright (c) 2014 Shaocong Ren. All rights reserved.
//

#import "PlayingCardGameViewController.h"
#import "PlayingCardDeck.h"

@implementation PlayingCardGameViewController

- (Deck *)createDeck // abstract method
{
    return [[PlayingCardDeck alloc] init];
}

@end

