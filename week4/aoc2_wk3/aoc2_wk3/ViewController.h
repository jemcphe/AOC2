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
    IBOutlet UILabel* addEventLabel;
    IBOutlet UITextView* eventTextView;
    IBOutlet UIButton* saveButton;
    
    //NSString for text
    NSString* myEventString;
    
    //Gesture Recognizers
    UISwipeGestureRecognizer* rightSwiper;
    //UISwipeGestureRecognizer* leftSwiper;
}

//-(IBAction)onAddEvent:(id)sender;
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer;
-(IBAction)onSave:(id)sender;

@end
