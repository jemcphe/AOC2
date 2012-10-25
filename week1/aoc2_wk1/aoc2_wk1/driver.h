//
//  driver.h
//  aoc2_wk1
//
//  Created by James McPherson on 10/24/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "baseGolfClub.h"

@interface driver : baseGolfClub

//adding a new data member for the driver
/*The wind is assumed to be traveling in the opposite direction
of the ball's flight, therefore the more == less distance */
@property int windSpeed;

@end
