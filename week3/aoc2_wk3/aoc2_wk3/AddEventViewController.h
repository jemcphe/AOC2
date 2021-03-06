//
//  AddEventViewController.h
//  aoc2_wk3
//
//  Created by James McPherson on 10/31/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol eventDataDelegate <NSObject>

@required
-(void)didClose:(NSString*)eventString;

@end

@interface AddEventViewController : UIViewController <UITextFieldDelegate>
{
    //delegate declaration
    id<eventDataDelegate> delegate;
    
    //IBOutlet declaration
    IBOutlet UIButton* saveButton;
    IBOutlet UIButton* closeKeyboard;
    IBOutlet UITextField* eventText;
    IBOutlet UIDatePicker* pickDate;
    
    //declare date object
    NSDate* minimumDate;
    NSDate* currentDate;
    NSDate* eventDate;
    NSDateFormatter* formatter;
    NSString* dateMsg;
    NSString* dateString;
}

@property (strong) id<eventDataDelegate> delegate;

-(IBAction)onDatePick:(id)sender;
-(IBAction)onSaveButton:(id)sender;
-(IBAction)onCloseKeyboard:(id)sender;

@end
