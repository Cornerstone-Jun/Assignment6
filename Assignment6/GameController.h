//
//  GameController.h
//  Assignment6
//
//  Created by Jumpei on 2018-04-20.
//  Copyright © 2018 Jumpei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
@interface GameController : NSObject

@property (nonatomic, strong) NSMutableArray *dice;
@property (nonatomic, strong) NSMutableArray *holdingDice;

- (void) holdDie: (NSInteger) dieNumber;

@end
