//
//  Workout.m
//  LiftingCoach
//
//  Created by Michael Mardis on 4/17/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import "Workout.h"
#import "Exercise.h"
@implementation Workout

- (NSMutableArray *)exercises
{
    if (!_exercises) {
        _exercises = [[NSMutableArray alloc]init];
    }
    return _exercises;
}

// constructors for stronglifts workouts
- (id)initStrongLiftA {
    self = [super init];
    if (self) {
        _day = dayA;
        
        Exercise *exStrongLiftA1 = [[Exercise alloc]initWithName:squat targetSets:fiveSets targetReps:fiveReps];
        Exercise *exStrongLiftA2 = [[Exercise alloc]initWithName:benchPress targetSets:fiveSets targetReps:fiveReps];
        Exercise *exStrongLiftA3 = [[Exercise alloc]initWithName:barbellRow targetSets:fiveSets targetReps:fiveReps];
        _exercises = [NSMutableArray arrayWithObjects:exStrongLiftA1, exStrongLiftA2, exStrongLiftA3, nil];
        
    }
    return self;
}

- (id)initStrongLiftB {
    self = [super init];
    if (self) {
        _day = dayB;
        
        Exercise *exStrongLiftB1 = [[Exercise alloc]initWithName:squat targetSets:fiveSets targetReps:fiveReps];
        Exercise *exStrongLiftB2 = [[Exercise alloc]initWithName:overhead targetSets:fiveSets targetReps:fiveReps];
        Exercise *exStrongLiftB3 = [[Exercise alloc]initWithName:deadlift targetSets:oneSet targetReps:fiveReps];
        _exercises = [NSMutableArray arrayWithObjects:exStrongLiftB1, exStrongLiftB2, exStrongLiftB3, nil];
        
    }
    return self;
}

- (id)initStrongLiftC {
    self = [super init];
    if (self) {
        _day = dayC;
        
        Exercise *exStrongLiftC1 = [[Exercise alloc]initWithName:squat targetSets:fiveSets targetReps:fiveReps];
        Exercise *exStrongLiftC2 = [[Exercise alloc]initWithName:benchPress targetSets:fiveSets targetReps:fiveReps];
        Exercise *exStrongLiftC3 = [[Exercise alloc]initWithName:dumbbellRow targetSets:fiveSets targetReps:fiveReps];
        _exercises = [NSMutableArray arrayWithObjects:exStrongLiftC1, exStrongLiftC2, exStrongLiftC3, nil];
        
    }
    return self;
}



// constructors for wendler's workouts
- (id)initWendlersA {
    self = [super init];
    if (self) {
        _day = dayA;
        Exercise *wendlersA1 = [[Exercise alloc]initWithName:squat targetSets:fiveSets targetReps:fiveReps];
        Exercise *wendlersA2 = [[Exercise alloc]initWithName:benchPress targetSets:fiveSets targetReps:fiveReps];
        Exercise *wendlersA3 = [[Exercise alloc]initWithName:dumbbellRow targetSets:fiveReps targetReps:fiveSets];
        _exercises = [NSMutableArray arrayWithObjects:wendlersA1, wendlersA2, wendlersA3, nil];
        
    }
    return self;
}

- (id)initWendlersB {
    self = [super init];
    if (self) {
        _day = dayB;
        Exercise *wendlersB1 = [[Exercise alloc]initWithName:benchPress targetSets:fiveSets targetReps:fiveReps];
        Exercise *wendlersB2 = [[Exercise alloc]initWithName:benchPress targetSets:fiveSets targetReps:fiveReps];
        Exercise *wendlersB3 = [[Exercise alloc]initWithName:dumbbellRow targetSets:oneSet targetReps:fiveReps];
        _exercises = [NSMutableArray arrayWithObjects:wendlersB1, wendlersB2, wendlersB3, nil];
        
    }
    return self;
}

- (id)initWendlersC {
    self = [super init];
    if (self) {
        _day = dayC;
        Exercise *wendlersC1 = [[Exercise alloc]initWithName:deadlift targetSets:fiveSets targetReps:fiveReps];
        Exercise *wendlersC2 = [[Exercise alloc]initWithName:benchPress targetSets:fiveSets targetReps:fiveReps];
        Exercise *wendlersC3 = [[Exercise alloc]initWithName:dumbbellRow targetSets:oneSet targetReps:fiveReps];
        _exercises = [NSMutableArray arrayWithObjects:wendlersC1, wendlersC2, wendlersC3, nil];
        
    }
    return self;
}

- (id)initWendlersD {
    self = [super init];
    if (self) {
        _day = dayD;
        Exercise *wendlersD1 = [[Exercise alloc]initWithName:overhead targetSets:fiveSets targetReps:fiveReps];
        Exercise *wendlersD2 = [[Exercise alloc]initWithName:benchPress targetSets:fiveSets targetReps:fiveReps];
        Exercise *wendlersD3 = [[Exercise alloc]initWithName:dumbbellRow targetSets:oneSet targetReps:fiveReps];
        _exercises = [NSMutableArray arrayWithObjects:wendlersD1, wendlersD2, wendlersD3, nil];
        
    }
    return self;
}



// constructors for madcow workouts
- (id)initMadcowsA {
    self = [super init];
    if (self) {
        _day = dayA;
        Exercise *madCowsA1 = [[Exercise alloc]initWithName:squat targetSets:fiveSets targetReps:fiveReps];
        Exercise *madCowsA2 = [[Exercise alloc]initWithName:benchPress targetSets:fiveSets targetReps:fiveReps];
        Exercise *madCowsA3 = [[Exercise alloc]initWithName:dumbbellRow targetSets:oneSet targetReps:fiveReps];
        _exercises = [NSMutableArray arrayWithObjects:madCowsA1, madCowsA2, madCowsA3, nil];
        
    }
    return self;
}

- (id)initMadcowsB {
    self = [super init];
    if (self) {
        _day = dayB;
        Exercise *madCowsB1 = [[Exercise alloc]initWithName:squat targetSets:fiveSets targetReps:fiveReps];
        Exercise *madCowsB2 = [[Exercise alloc]initWithName:benchPress targetSets:fiveSets targetReps:fiveReps];
        Exercise *madCowsB3 = [[Exercise alloc]initWithName:dumbbellRow targetSets:oneSet targetReps:fiveReps];
        _exercises = [NSMutableArray arrayWithObjects:madCowsB1, madCowsB2, madCowsB3, nil];
        
    }
    return self;
}

- (id)initMadcowsC {
    self = [super init];
    if (self) {
        _day = dayC;
        Exercise *madCowsC1 = [[Exercise alloc]initWithName:squat targetSets:fiveSets targetReps:fiveReps];
        Exercise *madCowsC2 = [[Exercise alloc]initWithName:benchPress targetSets:fiveSets targetReps:fiveReps];
        Exercise *madCowsC3 = [[Exercise alloc]initWithName:dumbbellRow targetSets:oneSet targetReps:fiveReps];
        _exercises = [NSMutableArray arrayWithObjects:madCowsC1, madCowsC2, madCowsC3, nil];
        
    }
    return self;
}

@end
