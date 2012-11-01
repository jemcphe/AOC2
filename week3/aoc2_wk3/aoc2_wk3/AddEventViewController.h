//
//  AddEventViewController.h
//  aoc2_wk3
//
//  Created by James McPherson on 10/31/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddEventViewController : UIViewController
{
    IBOutlet UIButton* saveButton;
    IBOutlet UIButton* closeKeyboard;
    IBOutlet UITextField* eventText;
}

-(IBAction)onSaveButton:(id)sender;
-(IBAction)onCloseKeyboard:(id)sender;

@end
