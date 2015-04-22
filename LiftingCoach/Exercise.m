//
//  Exercise.m
//  LiftingCoach
//
//  Created by Michael Mardis on 4/18/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import "Exercise.h"

@implementation Exercise


-(id)initWithName:(NSString *)name targetSets:(NSInteger)targetSets targetReps:(NSInteger)targetReps {
    if (self) {
        _name = name;
        _targetSets = targetSets;
        _targetReps = targetReps;
    }
    return self;
}

/*
- (id)initStrongLiftA1 {
    self = [super init];
    if (self) {
        _name = squat;
        _targetSets = fiveSets;
        _targetReps = fiveReps;
    }
    return self;
}

- (id)initStrongLiftA2 {
    self = [super init];
    if (self) {
        _name = benchPress;
        _targetSets = fiveSets;
        _targetReps = fiveReps;
    }
    return self;
}

- (id)initStrongLiftA3 {
    self = [super init];
    if (self) {
        _name = barbellRow;
        _targetSets = fiveSets;
        _targetReps = fiveReps;
    }
    return self;
}

- (id)initStrongLiftB1 {
    self = [super init];
    if (self) {
        _name = squat;
        _targetSets = fiveSets;
        _targetReps = fiveReps;
    }
    return self;
}

- (id)initStrongLiftB2 {
    self = [super init];
    if (self) {
        _name = overhead;
        _targetSets = fiveSets;
        _targetReps = fiveReps;
    }
    return self;
}

- (id)initStrongLiftB3 {
    self = [super init];
    if (self) {
        _name = deadlift;
        _targetSets = oneSet;
        _targetReps = fiveReps;
    }
    return self;
}

- (id)initStrongLiftC1 {
    self = [super init];
    if (self) {
        _name = squat;
        _targetSets = fiveSets;
        _targetReps = fiveReps;
    }
    return self;
}

- (id)initStrongLiftC2 {
    self = [super init];
    if (self) {
        _name = benchPress;
        _targetSets = fiveSets;
        _targetReps = fiveReps;
    }
    return self;
}

- (id)initStrongLiftC3 {
    self = [super init];
    if (self) {
        _name = barbellRow;
        _targetSets = fiveSets;
        _targetReps = fiveReps;
    }
    return self;
}
 */

@end
