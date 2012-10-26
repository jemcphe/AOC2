//
//  ViewController.m
//  aoc2_wk1
//
//  Created by James McPherson on 10/24/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    /***************************  BACKGROUND COLOR  ***********************/

    self.view.backgroundColor = [UIColor whiteColor];
    
    /*************************** GOLF CLUB CREATION ***********************/
    
    //Create Driver golf club
    driver* myDriver = (driver*) [golfClubFactory createNewGolfClub:DRIVER];
    [myDriver setWindSpeed:40];
    
    if (myDriver != nil) {
        [myDriver calculateBallDistance];
    }
    
    //Create fiveIron golf club
    fiveIron* myFiveIron = (fiveIron*) [golfClubFactory createNewGolfClub:FIVEIRON];
    [myFiveIron setTemperature:55];
    
    if (myFiveIron != nil) {
        [myFiveIron calculateBallDistance];
    }
    
    //Create pitchWedge golf Club
    pitchWedge* myPitchWedge = (pitchWedge*) [golfClubFactory createNewGolfClub:PITCHWEDGE];
    [myPitchWedge setSolidContact:10];
    
    //check for pitchWedge creation
    if (myPitchWedge != nil) {
        [myPitchWedge calculateBallDistance];
    }
    
    /*************************** UI LABAELS FOR DISPLAY ***********************/
    //CREATE LABEL FOR DRIVER
    driverLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 40.0f)];
    if (driverLabel != nil) {
        driverLabel.backgroundColor = [UIColor colorWithRed:0.98 green:0.698 blue:0.016 alpha:1]; /*#fab204*/
        driverLabel.text = @"The Driver";
        driverLabel.textColor = [UIColor blackColor];
        driverLabel.textAlignment = UITextAlignmentCenter;
        driverLabel.numberOfLines = 4;
    }
    
    //CREATE LABEL FOR DRIVER TEST
    driverTestLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 55.0f, 300.0f, 100.0f)];
    if (driverTestLabel != nil) {
        driverTestLabel.backgroundColor = [UIColor colorWithRed:0.98 green:0.812 blue:0.412 alpha:1]; /*#facf69*/
        driverTestLabel.text = [NSString stringWithFormat: @" Golf Club: Driver\n Golf Ball: %@\n Wind: %imph\n Yards Traveled: %iyds", [myDriver golfBall], [myDriver windSpeed], [myDriver yardsTraveled]];
        driverTestLabel.textColor = [UIColor blackColor];
        driverTestLabel.textAlignment = UITextAlignmentLeft;
        driverTestLabel.numberOfLines = 4;
    }
    
    //CREATE LABEL FOR FIVE IRON
    fiveIronLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 160.0f, 300.0f, 40.0f)];
    if (fiveIronLabel != nil) {
        fiveIronLabel.backgroundColor = [UIColor colorWithRed:0.98 green:0.698 blue:0.016 alpha:1]; /*#fab204*/
        fiveIronLabel.text = @"The 5 Iron";
        fiveIronLabel.textColor = [UIColor blackColor];
        fiveIronLabel.textAlignment = UITextAlignmentCenter;
    }
    
    //CREATE LABEL FOR FIVE IRON TEST
    fiveIronTestLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 205.0f, 300.0f, 100.0f)];
    if (fiveIronTestLabel != nil) {
        fiveIronTestLabel.backgroundColor = [UIColor colorWithRed:0.98 green:0.812 blue:0.412 alpha:1]; /*#facf69*/
        fiveIronTestLabel.text = [NSString stringWithFormat: @" Golf Club: 5 Iron\n Golf Ball: %@\n Temperature: %i Yards\n Traveled: %iyds", [myFiveIron golfBall], [myFiveIron temperature], [myFiveIron yardsTraveled]];
        fiveIronTestLabel.textColor = [UIColor blackColor];
        fiveIronTestLabel.textAlignment = UITextAlignmentLeft;
        fiveIronTestLabel.numberOfLines = 4;
    }
    
    //CREATE LABEL FOR FIVE IRON
    pitchWedgeLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 310.0f, 300.0f, 40.0f)];
    if (pitchWedgeLabel != nil) {
        pitchWedgeLabel.backgroundColor = [UIColor colorWithRed:0.98 green:0.698 blue:0.016 alpha:1]; /*#fab204*/
        pitchWedgeLabel.text = @"The Pitching Wedge";
        pitchWedgeLabel.textColor = [UIColor blackColor];
        pitchWedgeLabel.textAlignment = UITextAlignmentCenter;
    }
    
    //CREATE LABEL FOR FIVE IRON TEST
    pitchWedgeTestLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 355.0f, 300.0f, 100.0f)];
    if (pitchWedgeTestLabel != nil) {
        pitchWedgeTestLabel.backgroundColor = [UIColor colorWithRed:0.98 green:0.812 blue:0.412 alpha:1]; /*#facf69*/
        pitchWedgeTestLabel.text = [NSString stringWithFormat: @" Golf Club: Pitching Wedge\n Golf Ball: %@\n Contact (1-10): %i\n Yards Traveled: %i", [myPitchWedge golfBall], [myPitchWedge solidContact],
                                    [myPitchWedge yardsTraveled]];
        pitchWedgeTestLabel.textColor = [UIColor blackColor];
        pitchWedgeTestLabel.textAlignment = UITextAlignmentLeft;
        pitchWedgeTestLabel.numberOfLines = 4;
    }
        
    /*************************** ADD LABELS TO VIEW ***************************/
    [self.view addSubview:driverLabel];
    [self.view addSubview:driverTestLabel];
    [self.view addSubview:fiveIronLabel];
    [self.view addSubview:fiveIronTestLabel];
    [self.view addSubview:pitchWedgeLabel];
    [self.view addSubview:pitchWedgeTestLabel];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
