//
//  Dice.h
//  Assignment6
//
//  Created by Jumpei on 2018-04-20.
//  Copyright © 2018 Jumpei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, assign) NSInteger value;
@property (nonatomic, assign) BOOL isHeld;
- (void) roll;
@end
