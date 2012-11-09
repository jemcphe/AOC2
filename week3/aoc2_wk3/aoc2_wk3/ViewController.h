//
//  ViewController.h
//  aoc2_wk3
//
//  Created by James McPherson on 10/31/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventViewController.h"

@interface ViewController : UIViewController <eventDataDelegate>
{
    // IBOutlets
    IBOutlet UIButton* addEventButton;
    IBOutlet UITextView* eventTextView;
}

-(IBAction)onAddEvent:(id)sender;

@end
