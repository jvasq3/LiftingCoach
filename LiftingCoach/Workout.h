//
//  Workout.h
//  LiftingCoach
//
//  Created by Michael Mardis on 4/17/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Workout : NSObject

@property (nonatomic, strong) NSMutableArray *benchReps;
@property (nonatomic, strong) NSMutableArray *squatReps;
@property (nonatomic, strong) NSMutableArray *deadliftReps;
@property (nonatomic, strong) NSMutableArray *overheadReps;

@end
