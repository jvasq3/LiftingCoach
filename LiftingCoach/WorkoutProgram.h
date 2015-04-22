//
//  WorkoutProgram.h
//  LiftingCoach
//
//  Created by Michael Mardis on 4/18/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WorkoutProgram : NSObject

@property (nonatomic, strong) NSString *programName;

// array of workouts
@property (nonatomic, strong) NSMutableArray *workouts;

-(id)initWithName:(NSString *)name;

@end

// variables for names of the workout routines
static NSString *strongLifts = @"StrongLifts";
static NSString *wendlers = @"Wendler's 5/3/1";
static NSString *madCow = @"Madcow 5x5";
