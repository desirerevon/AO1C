//
//  AppDelegate.m
//  myApp "X Your Size"
//
//  Created by Desire Gardner on 1/9/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//  Week 1 - Objective C 

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //Data Types 
    //Floats and ints 
    
    //Minutes for Warm Up
    
    int warmUp = 6; 
    
    //Amount of minutes for reps
    
    int jumpingJacks = 3;
    int squats = 3;
    int squatJumps = 3;
    int leftLunge = 3;
    int rightLunge = 3;
    int burpies =  3;
    int pushUps = 3;
    int crunches = 3;
    
    int restTimeOne = 30;
    int restTimeTwo = 15;
    int restTimeThree =5;
        
    //Time per workout
    float exerciseOne = 30.20;
    float exerciseTwo = 24.10;
    float exerciseThree= 15.5;
    float waterBreakOne = .20;
    float waterBreakTwo = .10;
    float waterBreakThree = .5;
    
    

    
    float completeExerciseOne = (float) warmUp * jumpingJacks * squats * squatJumps * leftLunge * rightLunge * burpies * pushUps * crunches * waterBreakOne;
    
    float completeExerciseTwo = (float) warmUp * jumpingJacks * squatJumps * leftLunge * rightLunge * burpies * crunches * waterBreakTwo;
    
    float completeExerciseThree = (float) warmUp * jumpingJacks * squats * crunches * waterBreakThree;
    
    //NSLogs
    NSLog(@"exercise one will take %f minutes to complete", exerciseOne);
    NSLog(@"exercise two will take %f minutes to complete", exerciseTwo);
    NSLog(@"exercise three will take %f minutes to complete", exerciseThree);
    
    //If else statements
    
    
    //one
    if (restTimeOne > completeExerciseOne){
        
        NSLog(@"You took too much time to rest.");
    
    } else {
    
        NSLog(@"Great workout!"); //output
    }
    
    
    //two
    if (restTimeTwo < exerciseTwo){
    
        NSLog(@"Your doing great!"); //output
    
    }else{
    
        NSLog(@"Keep pushing!");
    }
    
    //three
    if(restTimeThree == completeExerciseThree){
    
        NSLog(@"You did not complete your work out, you must be tired.");
    }else{
    
        NSLog(@"Great workout now you can rest!"); //output
    }
    
    
    //If Else If Statements
    
   
    //one
    if (warmUp * jumpingJacks * squats * squatJumps * leftLunge * rightLunge * burpies * pushUps * crunches * waterBreakOne == completeExerciseOne) {
        
        NSLog(@"Wow! You are looking for results! Great Job!");//output
        
    }else if(warmUp * jumpingJacks * squats * squatJumps <= completeExerciseOne){
        
        NSLog(@"Almost reached your goal just a few more reps");
    }else{
        
        NSLog(@" Warm up completed. Let's begin the work out.");
    }
    

    
    //two
    if (warmUp * jumpingJacks < completeExerciseTwo) {
        
        NSLog(@"Wow! You are looking for results! Keep it up just a few more reps to go!"); //output
        
    }else if(warmUp * jumpingJacks * squatJumps * leftLunge * rightLunge * burpies * crunches * waterBreakTwo == completeExerciseTwo){
        
        NSLog(@"Great work out!");
    }else{
        
        NSLog(@"You did not complete your work out, you must be tired.");
    }
    
    
    
    
    
    //three
    if (warmUp * jumpingJacks * squats* crunches * waterBreakThree == completeExerciseThree) {
    
        NSLog(@"Great job! Now take some time to rest!"); //output
    
    }else if(warmUp * jumpingJacks * squats < completeExerciseThree){
    
        NSLog(@" Workout three was not completed. Please complete one more rep.");
    }else{
    
        NSLog(@"Push harder to reach your goal! You can do it!");
    }
    
    
    //If statment / && Operator
    if ((completeExerciseTwo && waterBreakTwo) <= (exerciseTwo)){
        
        NSLog(@"Great work you have completed workout two!");
    }
    
    //If statment/ || Operator

    if ((warmUp * jumpingJacks * squats * squatJumps || warmUp * leftLunge * rightLunge * burpies) <= (exerciseThree)){
        
        NSLog(@"Workout three is complete!");
    }
    
   //Boolean
    
    BOOL warmUpDone = ((int)leftLunge * (int)rightLunge <= 6);
    if (warmUpDone == YES){
    
        NSLog(@"You have completed your warm up now you may began your first exercise.");
    }else{
        
        NSLog(@"Please complete your warm up.");
    }
    
    
    //Single Loop
    for (int x =30; x > 0; x--) {
        NSLog(@"You have %d minutes until your warm up begins",x);
    }
    
    
    //Nested Loop
    
    //minutes starting at 5 for a count down to 15
    for (int minPerWarmup= 5; minPerWarmup < 16; minPerWarmup++){
        NSLog(@"You have %i minutes until your warm up is complete", minPerWarmup);
        for (int minPerWarmup= 5; minPerWarmup < 16; minPerWarmup++){
            NSLog(@"You have completed %i make sure you stretch!", minPerWarmup);

        }
         
    }
    
    
    
    //While Loop
    
    int workOutSession = 1;
    
    while(workOutSession < 4){
    
        NSLog(@" Start with %i workout this session.",workOutSession);
        workOutSession++;
    }
    
    
    return YES;
}
    




- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
