//
//  WorkoutProgram.m
//  LiftingCoach
//
//  Created by Michael Mardis on 4/18/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import "WorkoutProgram.h"
#import "Workout.h"

@implementation WorkoutProgram

- (NSMutableArray *)workouts
{
    if (!_workouts) {
        _workouts = [[NSMutableArray alloc]init];
    }
    return _workouts;
}


// constructor for a workout program. Will give the name and an array of workout
// sessions that a workout program contains.
- (id)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _programName = name;
        if ([name isEqualToString:strongLifts]) {
            Workout *a = [[Workout alloc]initStrongLiftA];
            Workout *b = [[Workout alloc]initStrongLiftB];
            //Workout *c = [[Workout alloc]initStrongLiftC];
            _workouts = [NSMutableArray arrayWithObjects:a, b, nil];
        }
        else if ([name isEqualToString:wendlers]) {
            Workout *a = [[Workout alloc]initWendlersA];
            Workout *b = [[Workout alloc]initWendlersB];
            Workout *c = [[Workout alloc]initWendlersC];
            Workout *d = [[Workout alloc]initWendlersD];
            _workouts = [NSMutableArray arrayWithObjects:a, b, c, d, nil];
        }
        else {
            Workout *a = [[Workout alloc]initMadcowsA];
            Workout *b = [[Workout alloc]initMadcowsB];
            Workout *c = [[Workout alloc]initMadcowsC];
            _workouts = [NSMutableArray arrayWithObjects:a, b, c, nil];
        }
        
    }
    return self;
}

@end
