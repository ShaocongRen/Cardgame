//
//  Card.m
//  Cardgame
//
//  Created by Shaocong Ren on 2014-07-04.
//  Copyright (c) 2014 Shaocong Ren. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *) otherCards{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    
    return score;
}
// add this line
//test
//test2
//test4


/// lllatest change
@end
