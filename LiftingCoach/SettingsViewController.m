//
//  SettingsViewController.m
//  LiftingCoach
//
//  Created by Juan Vasquez on 4/20/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import "SettingsViewController.h"
#import <Foundation/Foundation.h>
#import "User.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UITextField *squatMax;
@property (weak, nonatomic) IBOutlet UITextField *benchMax;
@property (weak, nonatomic) IBOutlet UITextField *deadliftMax;
@property (weak, nonatomic) IBOutlet UITextField *oPressMax;
//@property (strong, nonatomic) User *user;

@end


@implementation SettingsViewController

-(User*) user
{
    if(!_user)
    {
        _user = [[User alloc] init];
    }
    return _user;
}
- (void)viewDidLoad {
    _squatMax.delegate = self;
    _benchMax.delegate = self;
    _deadliftMax.delegate = self;
    _oPressMax.delegate = self;
    self.squatMax.keyboardType = UIKeyboardTypeNumberPad;
    self.benchMax.keyboardType = UIKeyboardTypeNumberPad;
    self.deadliftMax.keyboardType = UIKeyboardTypeNumberPad;
    self.oPressMax.keyboardType = UIKeyboardTypeNumberPad;
    self.squatMax.tag = 0;
    self.benchMax.tag = 1;
    self.deadliftMax.tag = 2;
    self.oPressMax.tag = 3;
    
    if(self.user.maxBench)
    {
        self.benchMax.text = [NSString stringWithFormat: @"%ld", self.user.maxBench];
    }
    else if(self.user.maxDeadlift)
    {
        self.deadliftMax.text = [NSString stringWithFormat: @"%ld", self.user.maxDeadlift];
    }
    else if(self.user.maxOverhead)
    {
        self.oPressMax.text = [NSString stringWithFormat: @"%ld", self.user.maxOverhead];
    }
    else if (self.user.maxSquat)
    {
        self.squatMax.text = [NSString stringWithFormat: @"%ld", self.user.maxSquat];
    }
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

//#pragma - mark TextField Delegate Methods
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
   
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if(textField.tag == 0)
    {
            self.user.maxSquat = [self.squatMax.text intValue];
            NSLog(@"Max Squat: %ld", self.user.maxSquat);
    
    }
    else if(textField.tag == 1)
    {
            self.user.maxBench = [self.benchMax.text intValue];
            NSLog(@"Max Bench: %ld", self.user.maxBench);
    }
    else if(textField.tag == 2)
    {
        self.user.maxDeadlift = [self.deadliftMax.text intValue];
        NSLog(@"Max Deadlift: %ld", self.user.maxDeadlift);
    }
    else if(textField.tag == 3)
    {
        self.user.maxOverhead = [self.oPressMax.text intValue];
        NSLog(@"Max Overhead: %ld", self.user.maxOverhead);
    }
    NSLog(@"%@",textField.text);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
        return YES;
    
}

@end

