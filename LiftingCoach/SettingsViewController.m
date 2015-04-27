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
    
    self.navigationItem.title = @"Settings";
    
    self.squatMax.keyboardType = UIKeyboardTypeNumberPad;
    self.benchMax.keyboardType = UIKeyboardTypeNumberPad;
    self.deadliftMax.keyboardType = UIKeyboardTypeNumberPad;
    self.oPressMax.keyboardType = UIKeyboardTypeNumberPad;
    self.squatMax.tag = 0;
    self.benchMax.tag = 1;
    self.deadliftMax.tag = 2;
    self.oPressMax.tag = 3;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger maxSquat = [defaults integerForKey:@"maxSquat"];
    NSInteger maxBench = [defaults integerForKey:@"maxBench"];
    NSInteger maxDeadlift = [defaults integerForKey:@"maxDeadlift"];
    NSInteger maxOverhead = [defaults integerForKey:@"maxOverhead"];
    
    self.user.maxSquat = maxSquat;
    self.user.maxBench = maxBench;
    self.user.maxDeadlift = maxDeadlift;
    self.user.maxOverhead = maxOverhead;
    
    
    if(self.user.maxBench)
    {
        self.benchMax.text = [NSString stringWithFormat: @"%ld", self.user.maxBench];
    }
    if (self.user.maxDeadlift)
    {
        self.deadliftMax.text = [NSString stringWithFormat: @"%ld", self.user.maxDeadlift];
    }
    if (self.user.maxOverhead)
    {
        self.oPressMax.text = [NSString stringWithFormat: @"%ld", self.user.maxOverhead];
    }
    if (self.user.maxSquat)
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
    // create NSUserDefaults for values to be saved over launches
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if(textField.tag == 0)
    {
            self.user.maxSquat = [self.squatMax.text intValue];
            NSLog(@"Max Squat: %ld", self.user.maxSquat);
        
        
        
        [defaults setInteger:self.user.maxSquat forKey:@"maxSquat"];
        [defaults synchronize];
    
    }
    else if(textField.tag == 1)
    {
            self.user.maxBench = [self.benchMax.text intValue];
            NSLog(@"Max Bench: %ld", self.user.maxBench);
        
        [defaults setInteger:self.user.maxBench forKey:@"maxBench"];
        [defaults synchronize];
    }
    else if(textField.tag == 2)
    {
        self.user.maxDeadlift = [self.deadliftMax.text intValue];
        NSLog(@"Max Deadlift: %ld", self.user.maxDeadlift);
        
        [defaults setInteger:self.user.maxDeadlift forKey:@"maxDeadlift"];
        [defaults synchronize];
    }
    else if(textField.tag == 3)
    {
        self.user.maxOverhead = [self.oPressMax.text intValue];
        NSLog(@"Max Overhead: %ld", self.user.maxOverhead);
        
        [defaults setInteger:self.user.maxOverhead forKey:@"maxOverhead"];
        [defaults synchronize];
    }
    NSLog(@"%@",textField.text);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
        return YES;
    
}

@end

