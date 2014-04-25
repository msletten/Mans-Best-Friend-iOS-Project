//
//  MSMBFDog.m
//  Man's Best Friend
//
//  Created by Mat Sletten on 4/10/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import "MSMBFDog.h"

@implementation MSMBFDog

-(void)bark
{
    NSLog(@"Woof Woof!");
    
}

-(void)barkANumberOfTimes:(int)numberOfTimes
{
    for (int bark = 1; bark <= numberOfTimes; bark ++){
        [self bark];
    }
}

-(void)changeBreedToWerewolf;
{
    self.breed = @"Werewolf";
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
{
    if (!isLoud) {
        for (int bark = 1; bark <= numberOfTimes; bark ++) {
            NSLog(@"yip yip");
        }
    }
    else {
        for (int bark = 1; bark <= numberOfTimes; bark ++){
            NSLog(@"Ruff Ruff!");
        }
    }
}

-(int)ageInDogYearsFromAge:(int)regularAge
{
    int newAge = regularAge * 7;
    return newAge;
}


@end
