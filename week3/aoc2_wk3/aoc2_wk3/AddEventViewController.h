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
-(void)didClose:(NSString*) eventString;

@end

@interface AddEventViewController : UIViewController <UITextFieldDelegate>
{
    //delegate declaration
    id<eventDataDelegate> delegate;
    
    //IBOutlet declaration
    IBOutlet UIButton* saveButton;
    IBOutlet UIButton* closeKeyboard;
    IBOutlet UITextField* eventText;
}

@property (strong) id<eventDataDelegate> delegate;

-(IBAction)onSaveButton:(id)sender;
-(IBAction)onCloseKeyboard:(id)sender;

@end
