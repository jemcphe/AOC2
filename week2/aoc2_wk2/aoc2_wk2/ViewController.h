//
//  ViewController.h
//  aoc2_wk2
//
//  Created by James McPherson on 10/30/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int buttonValue;
    int result;
    
    IBOutlet UISwitch * enableCalc;
    IBOutlet UITextField * calcWindow;
    
    //IBOutlet for number buttons
    IBOutlet UIButton* zero;
    IBOutlet UIButton* one;
    IBOutlet UIButton* two;
    IBOutlet UIButton* three;
    IBOutlet UIButton* four;
    IBOutlet UIButton* five;
    IBOutlet UIButton* six;
    IBOutlet UIButton* seven;
    IBOutlet UIButton* eight;
    IBOutlet UIButton* nine;
}

-(IBAction)onClick:(id)sender;
-(IBAction)onClear:(id)sender;
-(IBAction)onSwitch:(id)sender;
-(IBAction)onSum:(id)sender;

@end
