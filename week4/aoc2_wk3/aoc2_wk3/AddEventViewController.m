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

//onSaveButton function... When clicked delegate will be called and collect data from UIDatePicker and UITextField
//then dismiss the AddEventViewController.
-(IBAction)onSaveButton:(id)sender
{
    if (delegate != nil) {
        [delegate didClose:[[NSString alloc] initWithFormat:@"New Event: %@\n%@", eventText.text, dateMsg]];
        [self dismissModalViewControllerAnimated:TRUE];
    }
    
}

//function to close keyboard when Close Keyboard Button is pressed. 
-(IBAction)onCloseKeyboard:(id)sender
{
    [eventText resignFirstResponder];
}

@end
