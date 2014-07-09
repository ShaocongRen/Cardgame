//
//  Card.h
//  Cardgame
//
//  Created by Shaocong Ren on 2014-07-04.
//  Copyright (c) 2014 Shaocong Ren. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;
- (int)match:(NSArray *) otherCards;

@end

// test ren
// test ren
// test ren
// latest change

// lllatest change