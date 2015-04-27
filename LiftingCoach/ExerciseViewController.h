//
//  ExerciseViewController.h
//  LiftingCoach
//
//  Created by Michael Mardis on 4/23/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Exercise.h"
@interface ExerciseViewController : UIViewController

@property (strong, nonatomic) Exercise *exercise;
@property (nonatomic, strong)  NSMutableArray *sets;
@property (nonatomic, strong) NSMutableArray *textFields;
@property (nonatomic, strong) NSMutableArray *labels;
@end
