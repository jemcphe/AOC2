//
//  driver.m
//  aoc2_wk1
//
//  Created by James McPherson on 10/24/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "driver.h"

@implementation driver

//synthesizing new data member
@synthesize windSpeed;

//establishing init for custom data member values
-(id) init
{
    self = [super init];
    if (self != nil) {
        [self setYardsTraveled:310];
        [self setWindSpeed:10];
        [self setGolfBall: @"Nike 20XI"];
        [self setSwingSpeed:105];
    }
    return self;
};

//calculation/manipulation method to determine distance of golf ball traveled with selected club
-(void)calculateBallDistance
{
    [self setYardsTraveled:(windSpeed - (windSpeed/2))];
    NSLog(@"Golf Club: Driver Golf Ball: %@ Wind: %i Yards Traveled: %i", self.golfBall, windSpeed, self.yardsTraveled);
}

@end
