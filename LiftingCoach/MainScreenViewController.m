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
#import "User.h"
#import "SettingsViewController.h"

@interface MainScreenViewController ()

@property (strong, nonatomic) WorkoutProgram *workoutProgram;
@property (nonatomic, strong) User *user;

@end

@implementation MainScreenViewController

- (WorkoutProgram *)workoutProgram
{
    if (!_workoutProgram) {
        _workoutProgram = [[WorkoutProgram alloc] init];
    }
    return _workoutProgram;
}

-(User*) user
{
    if(!_user)
    {
        _user = [[User alloc] init];
    }
    return _user;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"Lifting Coach";
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60)
                                                         forBarMetrics:UIBarMetricsDefault];

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
    if([segue.identifier isEqualToString:@"settings"])
    {
        if ([segue.destinationViewController isKindOfClass:[SettingsViewController class]]) {
            SettingsViewController *settingsVC = (SettingsViewController *)segue.destinationViewController;
            settingsVC.user = self.user;
        }
    }
    
    // Set the workout program appropriately on the segued page
    if ([[segue identifier] isEqualToString:@"StrongLifts"])
    {
        self.workoutProgram = [[WorkoutProgram alloc]initWithName:strongLifts];
        // Get reference to the destination view controller
        WorkoutProgramViewController *vc = (WorkoutProgramViewController *)segue.destinationViewController;
        
        vc.workoutProgram = self.workoutProgram;
    }
    else if ([[segue identifier] isEqualToString:@"Madcow"]) {
        self.workoutProgram = [[WorkoutProgram alloc]initWithName:madCow];
        // Get reference to the destination view controller
        WorkoutProgramViewController *vc = (WorkoutProgramViewController *)segue.destinationViewController;
        
        vc.workoutProgram = self.workoutProgram;
    }
    else if ([[segue identifier] isEqualToString:@"Wendlers"]) {
        self.workoutProgram = [[WorkoutProgram alloc]initWithName:wendlers];
        // Get reference to the destination view controller
        WorkoutProgramViewController *vc = (WorkoutProgramViewController *)segue.destinationViewController;
        
        vc.workoutProgram = self.workoutProgram;
        vc.user = self.user;
    }
    
}

@end
