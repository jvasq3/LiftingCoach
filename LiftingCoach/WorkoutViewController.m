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
@implementation WorkoutViewController

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
    
    cell.textLabel.text = exerciseName;
    
    return cell;
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
}

@end
