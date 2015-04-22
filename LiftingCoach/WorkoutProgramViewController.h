//
//  WorkoutProgramViewController.h
//  LiftingCoach
//
//  Created by Michael Mardis on 4/21/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WorkoutProgram.h"
@interface WorkoutProgramViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) WorkoutProgram *workoutProgram;


@end
