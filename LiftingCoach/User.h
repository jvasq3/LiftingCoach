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

@property (nonatomic, readwrite) NSInteger maxSquat;
@property (nonatomic, readwrite) NSInteger maxBench;
@property (nonatomic, readwrite) NSInteger maxDeadlift;
@property (nonatomic, readwrite) NSInteger maxOverhead;
//@property (nonatomic, strong) NSMutableArray *listOfWorkouts;

@end
