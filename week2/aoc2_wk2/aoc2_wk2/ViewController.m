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

-(IBAction)onClick:(id)sender
{
    
    
    
    UIButton *numberButton = (UIButton*) sender;
    if (numberButton != nil) {
        
        buttonValue = buttonValue * 10 + (int) numberButton.tag;
        calcWindow.text = [[NSString alloc] initWithFormat:@"%d", buttonValue];
        if (calcWindow.text.length == 10) {
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
            NSLog(@"Calculation Window limit has been reached.");
        }
    }
    
}

-(IBAction)onClear:(id)sender
{
    UIButton* clearButton = (UIButton*) sender;
    if (clearButton != nil) {
        buttonValue = 0;
        calcWindow.text = [[NSString alloc] initWithFormat:@"%d", buttonValue];
    }
}

@end
