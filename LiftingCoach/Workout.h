//
//  Workout.h
//  LiftingCoach
//
//  Created by Michael Mardis on 4/17/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Workout : NSObject

// the day of the workout (A, B, C, or D)
@property (strong, nonatomic) NSString *day;

// an array of the objects Exercise
@property (strong, nonatomic) NSMutableArray *exercises;


// stronglifts workout constructors
- (id)initStrongLiftA;
- (id)initStrongLiftB;
//- (id)initStrongLiftC;

// wendlers workout constructors
- (id)initWendlersA;
- (id)initWendlersB;
- (id)initWendlersC;
- (id)initWendlersD;

// madcows workout constructors
- (id)initMadcowsA;
- (id)initMadcowsB;
- (id)initMadcowsC;


@end

static NSString *dayA = @" A";
static NSString *dayB = @" B";
static NSString *dayC = @" C";
static NSString *dayD = @" D";