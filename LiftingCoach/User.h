//
//  User.h
//  LiftingCoach
//
//  Created by Michael Mardis on 4/17/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Workout.h"

@interface User : NSObject

@property (strong, nonatomic) NSString *username;
@property (nonatomic, readonly) NSInteger maxSquat;
@property (nonatomic, readonly) NSInteger maxBench;
@property (nonatomic, readonly) NSInteger maxDeadlift;
@property (nonatomic, readonly) NSInteger maxOverhead;
@property (strong, nonatomic) Workout *currentWorkout;

@end
