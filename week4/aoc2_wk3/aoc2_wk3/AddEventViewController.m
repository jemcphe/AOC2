//
//  AddEventViewController.m
//  aoc2_wk3
//
//  Created by James McPherson on 10/31/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "AddEventViewController.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController

//synthesize - getter and setter methods for delegate
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        delegate = nil;
        // Custom initialization
    }
    return self;
}

// when user hits return/done on keyboard, the keyboard will go away
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //resign first responder = keyboard goes away
    [eventText resignFirstResponder];
    //return TRUE because of boolean type
    return TRUE;
}

- (void)viewDidLoad
{
    //Once datapicker has loaded, this will keep minimum date to the current date.
    pickDate.minimumDate = pickDate.date;
    
    //swipe right to go back to home screen to view input from user.
    leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    
    //add swipe gesture to closeLabel
    [closeLabel addGestureRecognizer:leftSwiper];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
//onDatePick function is sender for UIPicker
-(IBAction)onDatePick:(id)sender
{
    //casting pickdate as UIDatePicker sender
    pickDate = (UIDatePicker*) sender;
    //check for existence
    if (pickDate != nil) {
        eventDate = pickDate.date;
        //Create format for Date
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"EEE, MMM d, yyyy h:mm a"];
        dateString = [formatter stringFromDate:eventDate];
        dateMsg = [[NSString alloc] initWithFormat:@"%@", dateString];
        //log to console
        NSLog(@"%@", dateMsg);
    }
}

//function to close keyboard when Close Keyboard Button is pressed. 
-(IBAction)onCloseKeyboard:(id)sender
{
    [eventText resignFirstResponder];
}

//function for swipe gesture... when user slides left, it will close modal view
-(void)onSwipe:(UISwipeGestureRecognizer *)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
        if (eventText.text.length == 0) {
            UIAlertView* noTextAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Please Enter An Event" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            //show noTextAlert
            [noTextAlert show];
        }
        else if (dateString == NULL){
            UIAlertView* noDateAlert = [[UIAlertView alloc] initWithTitle:@"Date Error" message:@"Please Select A Date and Time" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            //show noDateAlert
            [noDateAlert show];
        }
        else if (delegate != nil) {
            //format eventString properly for displaying in textView on front page.
            eventString = [[NSString alloc] initWithFormat:@"New Event: %@ \n%@ \n \n", eventText.text, dateMsg];
            
            //initiate custom delegate
            [delegate didClose:eventString];
            
            //make modal view disappear from view
            [self dismissModalViewControllerAnimated:TRUE];
        }
    }
}

@end
