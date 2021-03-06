//
//  ViewController.m
//  aoc2_wk3
//
//  Created by James McPherson on 10/31/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "ViewController.h"
#import "AddEventViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
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

// When Add Event Button is pressed AddEventViewController is made visible.
-(IBAction)onAddEvent:(id)sender
{
    AddEventViewController* addEvent = [[AddEventViewController alloc] initWithNibName:@"AddEventViewController" bundle:nil];
    if (addEvent != nil) {
        addEvent.delegate = self;
        [self presentModalViewController:addEvent animated:TRUE];
    }
}

//function from delegate... when save button from AddEventViewController is pressed, the text
//gathered from datepicker and textfield will be displayed in textView
-(void)didClose:(NSString *)eventString
{
    eventTextView.text = eventString;
}

@end
