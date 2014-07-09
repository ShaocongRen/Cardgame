//
//  PlayingCard.h
//  Cardgame
//
//  Created by Shaocong Ren on 2014-07-07.
//  Copyright (c) 2014 Shaocong Ren. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;


@end
