//
//  ViewController.m
//  LiftingCoach
//
//  Created by Juan Vasquez on 4/17/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import "MainScreenViewController.h"
#import "WorkoutProgram.h"
@interface MainScreenViewController ()

@property (strong, nonatomic) WorkoutProgram *workoutProgram;
@property (strong, nonatomic) NSString *programName;

@end

@implementation MainScreenViewController

- (NSString *)programName {
    if (!_workoutProgram) {
        _programName = [[NSString alloc]init];
    }
    return _programName;
}

- (WorkoutProgram *)workoutProgram
{
    if (!_workoutProgram) {
        _workoutProgram = [[WorkoutProgram alloc] init];
    }
    return _workoutProgram;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)reset:(UIStoryboardSegue *)segue {
    //do stuff
}

-(IBAction)prepareForUnwind:(UIStoryboardSegue *)segue {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)strongLiftsSelected:(id)sender {
    self.programName = @"StrongLifts";
    self.workoutProgram = [[WorkoutProgram alloc]init];
    self.workoutProgram.programName = self.programName;
    NSLog(@"Program Name: %@", self.workoutProgram.programName);
}

- (IBAction)windlersSelected:(id)sender {
    self.programName = @"Windler's";
    self.workoutProgram = [[WorkoutProgram alloc]init];
    self.workoutProgram.programName = self.programName;
    NSLog(@"Program Name: %@", self.workoutProgram.programName);
}


- (IBAction)germanVolumeSelected:(id)sender {
    self.programName = @"GermanVolume";
    self.workoutProgram = [[WorkoutProgram alloc]init];
    self.workoutProgram.programName = self.programName;
    NSLog(@"Program Name: %@", self.workoutProgram.programName);
}



@end
