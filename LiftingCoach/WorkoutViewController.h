//
//  WorkoutViewController.h
//  LiftingCoach
//
//  Created by Michael Mardis on 4/22/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Workout.h"
@interface WorkoutViewController : UITableViewController

@property (strong, nonatomic) Workout *workout;

@end
