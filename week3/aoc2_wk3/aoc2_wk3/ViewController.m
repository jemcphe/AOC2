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

-(IBAction)onAddEvent:(id)sender
{
    AddEventViewController* addEvent = [[AddEventViewController alloc] initWithNibName:@"AddEventViewController" bundle:nil];
    if (addEvent != nil) {
        addEvent.delegate = self;
        [self presentModalViewController:addEvent animated:TRUE];
    }
}

-(void)didClose:(NSString *)eventString
{
    eventTextView.text = eventString;
}

@end
