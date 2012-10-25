//
//  pitchWedge.m
//  aoc2_wk1
//
//  Created by James McPherson on 10/24/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "pitchWedge.h"

@implementation pitchWedge

//synthesizing new data member
@synthesize solidContact;

//establishing init for custom data member values
-(id) init
{
    self = [super init];
    if (self != nil) {
        [self setYardsTraveled:140];
        [self setSolidContact:0];
        [self setGolfBall: @"Nike 20XI"];
        [self setSwingSpeed:105];
    }
    return self;
};

//calculation/manipulation method to determine distance of golf ball traveled with selected club
-(void)calculateBallDistance
{
    //solidContact ranges 1-10... 10 == 140... 10 yards are deducted for poor contact..
    //ex. if solidContact == 7 ; yardage == 110
    if (solidContact <= 10 && solidContact >=1) {
        [self setYardsTraveled: (solidContact * 10) +40];
    }
    NSLog(@"Golf Club: Pitching Wedge Golf Ball: %@ Contact (1-10): %i Yards Traveled: %i", self.golfBall, solidContact, self.yardsTraveled);
}

@end
