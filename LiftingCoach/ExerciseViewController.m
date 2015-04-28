//
//  ExerciseViewController.m
//  LiftingCoach
//
//  Created by Michael Mardis on 4/23/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import "ExerciseViewController.h"

@interface ExerciseViewController()

@property (weak, nonatomic) IBOutlet UITextField *weight1;

@property (weak, nonatomic) IBOutlet UITextField *weight2;

@property (weak, nonatomic) IBOutlet UITextField *weight3;

@property (weak, nonatomic) IBOutlet UITextField *weight4;

@property (weak, nonatomic) IBOutlet UITextField *weight5;

@property (weak, nonatomic) IBOutlet UITextField *reps1;

@property (weak, nonatomic) IBOutlet UITextField *reps2;

@property (weak, nonatomic) IBOutlet UITextField *reps3;

@property (weak, nonatomic) IBOutlet UITextField *reps4;

@property (weak, nonatomic) IBOutlet UITextField *reps5;


@end

@implementation ExerciseViewController

-(User*) user
{
    if(!_user)
    {
        _user = [[User alloc] init];
    }
    return _user;
}

-(Exercise*) exercise

{
    if(!_exercise)
    {
        _exercise = [[Exercise alloc] init];
    }
    return _exercise;
}

-(NSMutableArray *)sets {
    if (!_sets) {
        _sets = [[NSMutableArray alloc]init];
    }
    return _sets;
}

-(NSMutableArray *)reps {
    if (!_reps) {
        _reps = [[NSMutableArray alloc]init];
    }
    return _reps;
}

-(NSMutableArray *)weights {
    if (!_weights) {
        _weights = [[NSMutableArray alloc]init];
    }
    return _weights;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // set the navbar title
    [self.tabBarController setTitle:self.exercise.name];
    
    _weight1.delegate = self;
    _weight2.delegate = self;
    _weight3.delegate = self;
    _weight4.delegate = self;
    _weight5.delegate = self;
    
    _reps1.delegate = self;
    _reps2.delegate = self;
    _reps3.delegate = self;
    _reps4.delegate = self;
    _reps5.delegate = self;
    
    self.weight1.keyboardType = UIKeyboardTypeNumberPad;
    self.weight2.keyboardType = UIKeyboardTypeNumberPad;
    self.weight3.keyboardType = UIKeyboardTypeNumberPad;
    self.weight4.keyboardType = UIKeyboardTypeNumberPad;
    self.weight5.keyboardType = UIKeyboardTypeNumberPad;
    
    self.reps1.keyboardType = UIKeyboardTypeNumberPad;
    self.reps2.keyboardType = UIKeyboardTypeNumberPad;
    self.reps3.keyboardType = UIKeyboardTypeNumberPad;
    self.reps4.keyboardType = UIKeyboardTypeNumberPad;
    self.reps5.keyboardType = UIKeyboardTypeNumberPad;
    
    self.weight1.tag = 0;
    self.weight2.tag = 1;
    self.weight3.tag = 2;
    self.weight4.tag = 3;
    self.weight5.tag = 4;
    
    self.reps1.tag = 5;
    self.reps2.tag = 6;
    self.reps3.tag = 7;
    self.reps4.tag = 8;
    self.reps5.tag = 9;
    
    }

//#pragma - mark TextField Delegate Methods
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField.tag == 0) {
        NSInteger weightValue = [self.weight1.text intValue];
        NSNumber *val = [NSNumber numberWithInteger:weightValue];
        [self.weights addObject:val];
        
    }
    else if (textField.tag == 1) {
        NSInteger weightValue = [self.weight2.text intValue];
        NSNumber *val = [NSNumber numberWithInteger:weightValue];
        [self.weights addObject:val];
    }
    else if (textField.tag == 2) {
        NSInteger weightValue = [self.weight3.text intValue];
        NSNumber *val = [NSNumber numberWithInteger:weightValue];
        [self.weights addObject:val];
    }
    else if (textField.tag == 3) {
        NSInteger weightValue = [self.weight4.text intValue];
        NSNumber *val = [NSNumber numberWithInteger:weightValue];
        [self.weights addObject:val];
    }
    else if (textField.tag == 4) {
        NSInteger weightValue = [self.weight5.text intValue];
        NSNumber *val = [NSNumber numberWithInteger:weightValue];
        [self.weights addObject:val];
    }
    else if (textField.tag == 5) {
        NSInteger repValue = [self.reps1.text intValue];
        NSNumber *val = [NSNumber numberWithInteger:repValue];
        [self.reps addObject:val];
    }
    else if (textField.tag == 6) {
        NSInteger repValue = [self.reps2.text intValue];
        NSNumber *val = [NSNumber numberWithInteger:repValue];
        [self.reps addObject:val];
    }
    else if (textField.tag == 7) {
        NSInteger repValue = [self.reps3.text intValue];
        NSNumber *val = [NSNumber numberWithInteger:repValue];
        [self.reps addObject:val];
    }
    else if (textField.tag == 8) {
        NSInteger repValue = [self.reps4.text intValue];
        NSNumber *val = [NSNumber numberWithInteger:repValue];
        [self.reps addObject:val];
    }
    else if (textField.tag == 9) {
        NSInteger repValue = [self.reps5.text intValue];
        NSNumber *val = [NSNumber numberWithInteger:repValue];
        [self.reps addObject:val];
    }
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [textField resignFirstResponder];
    return YES;
    
}


- (IBAction)completeExercise:(id)sender {
    
}


- (IBAction)tapToDismiss:(id)sender {
    [self.weight1 resignFirstResponder];
    [self.weight2 resignFirstResponder];
    [self.weight3 resignFirstResponder];
    [self.weight4 resignFirstResponder];
    [self.weight5 resignFirstResponder];
    [self.reps1 resignFirstResponder];
    [self.reps2 resignFirstResponder];
    [self.reps3 resignFirstResponder];
    [self.reps4 resignFirstResponder];
    [self.reps5 resignFirstResponder];
}




@end
