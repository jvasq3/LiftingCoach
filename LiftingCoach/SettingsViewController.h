//
//  SettingsViewController.h
//  LiftingCoach
//
//  Created by Juan Vasquez on 4/20/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface SettingsViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) User *user;
@end