//
//  ExerciseViewController.h
//  LiftingCoach
//
//  Created by Michael Mardis on 4/23/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Exercise.h"
#import "User.h"
@interface ExerciseViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) Exercise *exercise;
@property (nonatomic, strong)  NSMutableArray *sets;
@property (nonatomic, strong) NSMutableArray *reps;
@property (nonatomic, strong) NSMutableArray *weights;
@property (nonatomic, strong) User *user;
@end
