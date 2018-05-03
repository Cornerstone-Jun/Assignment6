//
//  GameController.m
//  Assignment6
//
//  Created by Jumpei on 2018-04-20.
//  Copyright © 2018 Jumpei. All rights reserved.
//

#import "GameController.h"

@implementation GameController
- (instancetype)init{
    self = [super init];
    if(self){
        Dice *d1 = [[Dice alloc]init];
        Dice *d2 = [[Dice alloc]init];
        Dice *d3 = [[Dice alloc]init];
        Dice *d4 = [[Dice alloc]init];
        Dice *d5 = [[Dice alloc]init];
        _dice = [NSMutableArray arrayWithArray:@[d1,d2,d3,d4,d5]];
    }
    return self;
}

- (void) holdDie:(NSInteger)dieNumber{
    //dice [d1,d2,d3,d4,d5]
    //dieNumber 1 -5
    Dice *die = [_dice objectAtIndex:dieNumber - 1];
    if([die isHeld]){
        [die setIsHeld:NO];
    }else{
        [die setIsHeld:YES];
        
    }
    [self displayDice];
}

-(void)rollTheReset{
    for(int i = 0; i < _dice.count; i++){
        if(![_dice[i] isHeld]) {
            [_dice[i] setIsHeld:YES];
        }
    }
    [self displayDice];
}

-(void) displayDice{
    NSLog(@"%@ %@ %@ %@ %@", _dice[1], _dice[2],_dice[3],_dice[4]);
    int score = 0;
    for(int i = 0; i < _dice.count; i++){
        if([_dice[i] isHeld]){
            score += [_dice[i] value];
        }
    }
}

@end
