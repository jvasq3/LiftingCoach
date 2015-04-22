//
//  ViewController.m
//  LiftingCoach
//
//  Created by Juan Vasquez on 4/17/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import "MainScreenViewController.h"
#import "WorkoutProgram.h"
#import "Exercise.h"
#import "WorkoutProgramViewController.h"

@interface MainScreenViewController ()

@property (strong, nonatomic) WorkoutProgram *workoutProgram;

@end

@implementation MainScreenViewController

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


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Set the workout program appropriately on the segued page
    if ([[segue identifier] isEqualToString:@"StrongLifts"])
    {
        self.workoutProgram = [[WorkoutProgram alloc]initWithName:strongLifts];
        
    }
    else if ([[segue identifier] isEqualToString:@"Madcow"]) {
        self.workoutProgram = [[WorkoutProgram alloc]initWithName:madCow];
    }
    else if ([[segue identifier] isEqualToString:@"Wendlers"]) {
        self.workoutProgram = [[WorkoutProgram alloc]initWithName:wendlers];
    }
    // Get reference to the destination view controller
    WorkoutProgramViewController *vc = (WorkoutProgramViewController *)segue.destinationViewController;
    
    vc.workoutProgram = self.workoutProgram;
}





@end
