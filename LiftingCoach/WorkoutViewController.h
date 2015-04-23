//
//  WorkoutViewController.h
//  LiftingCoach
//
//  Created by Michael Mardis on 4/22/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Workout.h"
#import "WorkoutProgram.h"
#import "User.h"
@interface WorkoutViewController : UITableViewController

@property (strong, nonatomic) Workout *workout;
@property (strong, nonatomic) WorkoutProgram *workoutProgram;
@property (strong, nonatomic) User *user;

@end
