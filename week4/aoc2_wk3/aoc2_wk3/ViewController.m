//
//  ViewController.m
//  aoc2_wk4
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
    //adding rightSwiper to addEventLabel
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    
    //Add gesture to label
    [addEventLabel addGestureRecognizer:rightSwiper];
    
    
    //Add Default Data to screen... Saved Data
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    
    //Checks for NSUserDefaults existence
    if (defaults != nil) {
        myEventString = [defaults objectForKey:@"event"];
        
        //display default text on screen
        eventTextView.text = myEventString;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight) {
        AddEventViewController* addEvent = [[AddEventViewController alloc] initWithNibName:@"AddEventViewController" bundle:nil];
        if (addEvent != nil) {
            addEvent.delegate = self;
            [self presentModalViewController:addEvent animated:TRUE];
        }
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

//function from delegate... when save button from AddEventViewController is pressed, the text
//gathered from datepicker and textfield will be displayed in textView
-(void)didClose:(NSString *)eventString
{
    //Check wether there is text or not entered in text field
    if (myEventString != nil) {
        
        //if there is currently text in the eventTextView, append the next Event below current text
        myEventString = [myEventString stringByAppendingString:eventString];
    }
    else {
        
        //if there is no previous data, begin with this event
        myEventString = [[NSString alloc] initWithFormat: @"%@", eventString];
    }
    //set eventTextView.text equal to myEventString
    eventTextView.text = myEventString;
}

-(IBAction)onSave:(id)sender
{
    if (eventTextView.text.length == 0) {
        UIAlertView* emptySaveAlert = [[UIAlertView alloc] initWithTitle:@"Save Attempt" message:@"You Have No Events To Save" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        //show onSaveAlert
        [emptySaveAlert show];
    }
    else {
        //Use NSUserDefaults to save the text information
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        if (defaults != nil) {
            NSString* eventText = eventTextView.text;
            [defaults setObject:eventText forKey:@"event"];
            
            //Synchronize defaults... this will be responsible for saving the Data.
            [defaults synchronize];
        }
        
        //Alert the User that the info was saved
        UIAlertView* onSaveAlert = [[UIAlertView alloc] initWithTitle:@"Saved" message:@"Your Events Were Saved Successfully" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        //show onSaveAlert
        [onSaveAlert show];
    }
    
}

@end
