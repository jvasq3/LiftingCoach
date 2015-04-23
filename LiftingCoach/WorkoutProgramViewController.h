//
//  WorkoutProgramViewController.h
//  LiftingCoach
//
//  Created by Michael Mardis on 4/22/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WorkoutProgram.h"
#import "Workout.h"

@interface WorkoutProgramViewController : UITableViewController

@property (strong, nonatomic) WorkoutProgram *workoutProgram;
@property (strong, nonatomic) Workout *workout;
@end
