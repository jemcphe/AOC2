//
//  ViewController.m
//  aoc2_wk2
//
//  Created by James McPherson on 10/30/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //set buttonValue equal to 0... this will help when placing more than one number into textField
    buttonValue = 0;
    //display 0 as the default int in calcWindow
    calcWindow.text = [[NSString alloc] initWithFormat:@"%d", buttonValue];
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



//When any of the numbers 0-9 are selected, this will fire.
-(IBAction)onClick:(id)sender
{
    //Creating numberButton sender
    UIButton *numberButton = (UIButton*) sender;
    if (numberButton != nil) {
        // basic function to allow for more than one number to be entered into calcWindow.
        buttonValue = buttonValue * 10 + (int) numberButton.tag;
        //this will display the buttonValue into the text window.
        calcWindow.text = [[NSString alloc] initWithFormat:@"%d", buttonValue];
        //When 10 numbers are entered into calcWindow, all numbers will become disabled to keep
        //buttonValue from creating unwanted results.
        if (calcWindow.text.length == 9) {
            zero.enabled = NO;
            one.enabled = NO;
            two.enabled = NO;
            three.enabled = NO;
            four.enabled = NO;
            five.enabled = NO;
            six.enabled = NO;
            seven.enabled = NO;
            eight.enabled = NO;
            nine.enabled = NO;
            //helpful message to console.
            NSLog(@"Calculation Window limit has been reached.");
        }
    }
    
}

// When CLEAR button is pressed, the calcWindow will be reset back to 0.
-(IBAction)onClear:(id)sender
{
    UIButton* clearButton = (UIButton*) sender;
    if (clearButton != nil) {
        buttonValue = 0;
        calcWindow.text = [[NSString alloc] initWithFormat:@"%d", buttonValue];
    }
}

-(IBAction)onSum:(id)sender
{
    //create sum sender
    UIButton* sum = (UIButton*) sender;
    //check for existence of senders
    if (sum != nil) {
        // set actions for plus sign selected
        if (sum.tag == 0) {
            //set result equal to buttonValue
            result = buttonValue;
        }
        // set actions for = sign being pressed.
        else if (sum.tag == 1) {
            //add result with buttonValue to get sum of values;
            result = result + buttonValue;
        }
    }
    buttonValue = 0;
    calcWindow.text = [[NSString alloc] initWithFormat:@"%d", result];
}

@end
