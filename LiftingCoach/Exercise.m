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

@end
