
 //
 //  WorkoutProgramViewController.m
 //  LiftingCoach
 //
 //  Created by Michael Mardis on 4/21/15.
 //  Copyright (c) 2015 CS378. All rights reserved.
 //
 
 #import "WorkoutProgramViewController.h"
 #import "MainScreenViewController.h"
 #import  "Workout.h"
 @implementation WorkoutProgramViewController
 
 - (WorkoutProgram *)workoutProgram
 {
 if (!_workoutProgram) {
 _workoutProgram = [[WorkoutProgram alloc] init];
 }
 return _workoutProgram;
 }
 
 - (void)viewDidLoad {
 
 }
 

// gives the amount of workouts that are in a workout program
 - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 return self.workoutProgram.workouts.count;
     
 }





 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
 {
     
 
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WorkoutList"];
 
 if (cell == nil) {
 cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"WorkoutList"];
 }
     
     if(indexPath.row == 0)
     {
         cell.textLabel.text = [self.workoutProgram.programName stringByAppendingString:@" A"];
         cell.detailTextLabel.text = @"";
         cell.detailTextLabel.textAlignment = NSTextAlignmentCenter;
     }
     else if(indexPath.row == 1)
     {
         cell.textLabel.text = [self.workoutProgram.programName stringByAppendingString:@" B"];
     }
     else if(indexPath.row == 2)
     {
         cell.textLabel.text = [self.workoutProgram.programName stringByAppendingString:@" C"];
     }
     else if(indexPath.row == 3)
     {
         cell.textLabel.text = [self.workoutProgram.programName stringByAppendingString:@" D"];
     }
     
     cell.textLabel.textAlignment = NSTextAlignmentCenter;
 return cell;
 
 }


 - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

 }

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"StrongLiftsA"])
    {
        //if ([segue.destinationViewController isKindOfClass:[SettingsViewController class]]) {
          //  SettingsViewController *settingsVC = (SettingsViewController *)segue.destinationViewController;
            //settingsVC.user = self.user;
        //}
    }
}


@end
