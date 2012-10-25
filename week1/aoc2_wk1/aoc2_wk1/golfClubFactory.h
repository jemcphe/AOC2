//
//  golfClubFactory.h
//  aoc2_wk1
//
//  Created by James McPherson on 10/24/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseGolfClub.h"
#import "driver.h"
#import "fiveIron.h"
#import "pitchWedge.h"

@interface golfClubFactory : NSObject

+(baseGolfClub *) createNewGolfClub: (int)golfClubType;

@end
