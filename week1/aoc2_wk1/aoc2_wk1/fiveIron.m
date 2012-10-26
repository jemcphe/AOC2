//
//  fiveIron.m
//  aoc2_wk1
//
//  Created by James McPherson on 10/24/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "fiveIron.h"

@implementation fiveIron

//synthesizing new data member
@synthesize temperature;

//establishing init for custom data member values
-(id) init
{
    self = [super init];
    if (self != nil) {
        [self setYardsTraveled:210];
        [self setTemperature:0];
        [self setGolfBall: @"Nike 20XI"];
        [self setSwingSpeed:105];
    }
    return self;
};

//calculation/manipulation method to determine distance of golf ball traveled with selected club
-(void)calculateBallDistance
{
    // check for temperature entered and set yardage effects accordingly.
    if (temperature >= 100) {
        [self setYardsTraveled: self.yardsTraveled + 10];
    }
    else if (temperature >= 80 && temperature < 100){
        [self setYardsTraveled: self.yardsTraveled + 5];
    }
    else if (temperature >= 60 && temperature < 80){
        [self setYardsTraveled: self.yardsTraveled];
    }
    else if (temperature < 60){
        [self setYardsTraveled: self.yardsTraveled - 10];
    }
    
    
    NSLog(@"Golf Club: 5 Iron\n Golf Ball: %@\n Temperature: %i Yards\n Traveled: %iyds", self.golfBall, temperature, self.yardsTraveled);
}

@end
