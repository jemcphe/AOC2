//
//  golfClubFactory.m
//  aoc2_wk1
//
//  Created by James McPherson on 10/24/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "golfClubFactory.h"

@implementation golfClubFactory

+(baseGolfClub *) createNewGolfClub: (int)golfClubType
{
    //creating driver golfClubType
    if (golfClubType == DRIVER) {
        return [[driver alloc] init];
    }
    //creating fiveIron golfClubType
    else if (golfClubType == FIVEIRON){
        return [[fiveIron alloc] init];
    }
    //creating pitchWedge golfClubType
    else if (golfClubType == PITCHWEDGE){
        return [[pitchWedge alloc] init];
    }
    // nil if none of the above
    else
    {
        return nil;
    }
}

@end
