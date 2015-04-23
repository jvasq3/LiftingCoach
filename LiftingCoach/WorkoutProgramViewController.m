
 //
 //  WorkoutProgramViewController.m
 //  LiftingCoach
 //
 //  Created by Michael Mardis on 4/21/15.
 //  Copyright (c) 2015 CS378. All rights reserved.
 //
 
 #import "WorkoutProgramViewController.h"
 #import "MainScreenViewController.h"
 #import "Workout.h"
 #import "Exercise.h"
 #import "WorkoutViewController.h"
 @implementation WorkoutProgramViewController
 
 - (WorkoutProgram *)workoutProgram
 {
 if (!_workoutProgram) {
 _workoutProgram = [[WorkoutProgram alloc] init];
 }
 return _workoutProgram;
 }

- (Workout *)workout
{
    if (!_workout) {
        _workout = [[Workout alloc] init];
    }
    return _workout;
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
     Workout *workout = [self.workoutProgram.workouts objectAtIndex:indexPath.row];
     
     NSString *exerciseNames = [[NSString alloc]init];
     
     cell.textLabel.text = [self.workoutProgram.programName stringByAppendingString:workout.day];
     
     NSMutableArray *containsNames = [[NSMutableArray alloc]init];
     
     for (int i = 0; i < workout.exercises.count; i++) {
         Exercise *exercise = [workout.exercises objectAtIndex:i];
         //[exerciseNames appendString:exercise.name];
         [containsNames addObject:exercise.name];
     }
     NSArray *namesCopy = [containsNames copy];
     
     exerciseNames = [namesCopy componentsJoinedByString:@", "];
     cell.detailTextLabel.text = exerciseNames;
     
 return cell;
 
 }

/*
 - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
     
     // make self.workout in here based on selection
     self.workout = [self.workoutProgram.workouts objectAtIndex:indexPath.row];
     
     [self performSegueWithIdentifier:@"ToExerciseList"
                               sender:self];
 }
 */



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    self.workout = [self.workoutProgram.workouts objectAtIndex:indexPath.row];
    
    if([segue.identifier isEqualToString:@"ToExerciseList"])
    {
        if ([segue.destinationViewController isKindOfClass:[WorkoutViewController class]]) {
            WorkoutViewController *vc = (WorkoutViewController *)segue.destinationViewController;
            vc.workout = self.workout;
            
        }
    }
 
 
    
    
}
 


@end
