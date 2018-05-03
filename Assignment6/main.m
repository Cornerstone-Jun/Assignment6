//
//  main.m
//  Assignment6
//
//  Created by Jumpei on 2018-04-20.
//  Copyright © 2018 Jumpei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
        while(YES){
            NSString *input = [InputHandler getUserInput:@"Enter roll to roll the dice: "];
            if([input isEqualToString:@"roll"]){
                [player rollTheRest];
                NSString *hold = [[InputHandler getUserInput: @"Enter a number to hold a die or 'q' to quit: "];
                if([hold isEqualToString:@"q"]){
                    break;
                }else{
                    break;
                }
            }
        }
        return 0;
}
