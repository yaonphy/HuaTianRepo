//
//  HTAddGuideCtrler.m
//  HuaTianProj
//
//  Created by yang on 13-10-5.
//  Copyright (c) 2013年 yaonphy. All rights reserved.
//

#import "HTAddGuideCtrler.h"

@implementation HTAddGuideCtrler
-(void)perform
{
    [[self sourceViewController] addChildViewController:[self destinationViewController]];
    [[[self sourceViewController] view] addSubview:[[self destinationViewController] view]];
    
}
@end
