//
//  Exercise.h
//  LiftingCoach
//
//  Created by Michael Mardis on 4/18/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Exercise : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, readwrite) NSInteger targetSets;
@property (nonatomic, readwrite) NSInteger targetReps;

// An array of the sets that you've completed
@property (nonatomic, strong)  NSMutableArray *sets;

/*
- (id)initStrongLiftA1;
- (id)initStrongLiftA2;
- (id)initStrongLiftA3;
- (id)initStrongLiftB1;
- (id)initStrongLiftB2;
- (id)initStrongLiftB3;
- (id)initStrongLiftC1;
- (id)initStrongLiftC2;
- (id)initStrongLiftC3;
*/
-(id)initWithName:(NSString *)name targetSets:(NSInteger)targetSets targetReps:(NSInteger)targetReps;


@end

// variables for main exercise names
static NSString *benchPress = @"Bench Press";
static NSString *squat = @"Squat";
static NSString *deadlift = @"Deadlift";
static NSString *overhead = @"Overhead Press";
static NSString *barbellRow = @"Barbell Row";

// variables for accessory exercise names for wendler's
static NSString *chinup = @"Chin up";
static NSString *legCurl = @"Leg Curl";
static NSString *calfRaise = @"Calf Raise";
static NSString *dumbbellRow = @"Dumbbell Row";
static NSString *hangingLegRaise = @"Hanging Leg Raise";
static NSString *inclineDumbbell = @"incline Dumbbell Press";
static NSString *dumbbellShoulderFlys = @"Dumbbell Shoulder Flys";

// variables for accessory names for stronglifts and madcows
static NSString *weightedSitup = @"Weighted Sit-Up";
static NSString *weightDips = @"Weighted Dips";
static NSString *barbellCurls = @"Barbell Curls";
static NSString *tricepExtension = @"Tricep Extensions";

// variables for number of target sets to complete
static NSInteger oneSet = 1;
static NSInteger twoSets = 2;
static NSInteger threeSets = 3;
static NSInteger fiveSets = 5;

// variables for target amount of reps to perform for each set
static NSInteger oneRep = 1;
static NSInteger threeReps = 3;
static NSInteger fiveReps = 5;
static NSInteger eightReps = 8;
static NSInteger tenReps = 10;







