//
//  WorkoutProgramViewController.m
//  LiftingCoach
//
//  Created by Michael Mardis on 4/21/15.
//  Copyright (c) 2015 CS378. All rights reserved.
//

#import "WorkoutProgramViewController.h"
#import "MainScreenViewController.h"
@implementation WorkoutProgramViewController

- (WorkoutProgram *)workoutProgram
{
    if (!_workoutProgram) {
        _workoutProgram = [[WorkoutProgram alloc] init];
    }
    return _workoutProgram;
}

- (void)viewDidLoad {
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        
    return self.workoutProgram.workouts.count;
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WorkoutList"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"WorkoutList"];
    }
    
    cell.textLabel.text = [[self.workoutProgram.workouts objectAtIndex:indexPath.row] name];
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    /*
    [self.player stop];
    NSURL* url = [[NSBundle mainBundle] URLForResource:[self.songs objectAtIndex:indexPath.row] withExtension:@"mp3"];
    NSError* error = nil;
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    [self.player setDelegate:self];
    
    [self.player prepareToPlay];
    self.currentSongNumber = indexPath.row;
    
    self.slider.value = 0.0;
    self.slider.maximumValue = [self.player duration];
    
    [self.player play];
     */
}



@end
