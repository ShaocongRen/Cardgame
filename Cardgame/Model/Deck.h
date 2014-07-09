//
//  Deck.h
//  Cardgame
//
//  Created by Shaocong Ren on 2014-07-07.
//  Copyright (c) 2014 Shaocong Ren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
