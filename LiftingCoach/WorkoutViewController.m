//
//  WorkoutViewController.m
//  LiftingCoach
//
//  Created by Michael Mardis on 4/22/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import "WorkoutViewController.h"
#import "Workout.h"
#import "Exercise.h"
#import "WorkoutProgramViewController.h"
#import "WorkoutProgram.h"
#import "User.h"
#import "ExerciseViewController.h"

@implementation WorkoutViewController

- (Workout *)workout
{
    if (!_workout) {
        _workout = [[Workout alloc] init];
    }
    return _workout;
}

- (Exercise *)exercise
{
    if (!_exercise) {
        _exercise = [[Exercise alloc] init];
    }
    return _exercise;
}

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
    NSMutableString *name = [self.workoutProgram.programName mutableCopy];
    NSMutableString *day = [self.workout.day mutableCopy];
    NSString *titleName = [name stringByAppendingString:day];
    self.navigationItem.title = titleName;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger maxSquat = [defaults integerForKey:@"maxSquat"];
    NSInteger maxBench = [defaults integerForKey:@"maxBench"];
    NSInteger maxDeadlift = [defaults integerForKey:@"maxDeadlift"];
    NSInteger maxOverhead = [defaults integerForKey:@"maxOverhead"];
    
    self.user.maxSquat = maxSquat;
    self.user.maxBench = maxBench;
    self.user.maxDeadlift = maxDeadlift;
    self.user.maxOverhead = maxOverhead;
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
}


// gives the amount of workouts that are in a workout program
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.workout.exercises.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ExerciseList"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ExerciseList"];
    }
    
    Exercise *exercise = [self.workout.exercises objectAtIndex:indexPath.row];
    
    NSString *exerciseName = exercise.name;
    
    // get sets and reps for each exercise to display
    NSString *sets = [NSString stringWithFormat:@"%ld", (long)exercise.targetSets];
    NSString *reps = [NSString stringWithFormat:@"%ld", (long)exercise.targetReps];
    NSArray *joinStrings = [NSArray arrayWithObjects:sets, reps, nil];
    NSString *jointStrings = [joinStrings componentsJoinedByString:@" x "];
    
    cell.textLabel.text = exerciseName;
    cell.detailTextLabel.text = jointStrings;
    
     cell.backgroundView = [[UIImageView alloc] initWithImage:[ [UIImage imageNamed:@"cell-background.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:5.0] ];
    
    return cell;
    
}

/*
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}
 */

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    self.exercise = [self.workout.exercises objectAtIndex:indexPath.row];
    
    if([segue.identifier isEqualToString:@"ToExercise"])
    {
            UITabBarController *tabar=segue.destinationViewController;
            ExerciseViewController *vc=[tabar.viewControllers objectAtIndex:0];
            vc.exercise = self.exercise;
        
            //vc.workoutProgram = self.workoutProgram;
            vc.user = self.user;
            
        
    }
    
    
    
    
    
    
}

@end
