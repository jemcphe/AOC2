//
//  baseGolfClub.h
//  aoc2_wk1
//
//  Created by James McPherson on 10/24/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseGolfClub : NSObject
{
    // declaring clubTypeEnum as an integer
    int clubTypeEnum;
}

// defining clubTypeEnum... these are the golf clubs that are used for this program
typedef enum {
    DRIVER = 0,
    FIVEIRON,
    PITCHWEDGE
} clubTypeEnum;

// data members
@property int swingSpeed;
@property int yardsTraveled;
@property NSString* golfBall;

/************ Methods *************/

//initialize
-(id) init;

//calculation/manipulation method to determine distance of golf ball traveled with selected club
-(void)calculateBallDistance;

@end
