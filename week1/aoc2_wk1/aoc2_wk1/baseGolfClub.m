//
//  baseGolfClub.m
//  aoc2_wk1
//
//  Created by James McPherson on 10/24/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "baseGolfClub.h"

@implementation baseGolfClub

//easy way for getter and setter
@synthesize swingSpeed, golfBall, yardsTraveled;

// initialize the baseGolfclub, and set swingSpeed to 105, and golfBall to Nike
-(id) init
{
    self = [super init];
    if (self != nil) {
        [self setSwingSpeed:105];
        [self setYardsTraveled:0];
        [self setGolfBall:@"Nike"];
    }
    return self;
}

//calculation/manipulation method to determine distance of golf ball traveled with selected club
-(void)calculateBallDistance
{
    NSLog(@"This golf club sends the golf ball %i yards.", yardsTraveled);
}

@end
