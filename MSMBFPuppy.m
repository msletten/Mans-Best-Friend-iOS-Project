//
//  MSMBFPuppy.m
//  Man's Best Friend
//
//  Created by Mat Sletten on 4/15/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import "MSMBFPuppy.h"

@implementation MSMBFPuppy

-(void)givePuppyEyes; {
    NSLog(@"unhappy face");
}

-(void)bark
{
    [super bark];
    NSLog(@"whimper whimper");
    [self givePuppyEyes];
}



@end
