//
//  Exercise.h
//  LiftingCoach
//
//  Created by Michael Mardis on 4/18/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import <Foundation/Foundation.h>
#

@interface Exercise : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, readwrite) NSInteger targetSets;
@property (nonatomic, readwrite) NSInteger targetReps;

// An array of the sets that you've completed
@property (nonatomic, strong)  NSMutableArray *sets;



@end
