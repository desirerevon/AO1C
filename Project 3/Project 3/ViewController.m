//
//  ViewController.m
//  Project 3
//
//  Created by Desire Gardner on 1/22/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    
    //(1/7/8)Function ADD//////////////////////////////////////////////////////////
    //Returns the result of two int types with a NSString message/////////////////
    int sum = [self add:300 with:25];
    NSNumber *sumOfInt = [[NSNumber alloc] initWithInt:sum];
    NSString *text = [NSString stringWithFormat:@"The number is "];
    NSString *convertString  = [sumOfInt stringValue];
    NSString *addstring = [self append:text with:convertString];
    [self displayAlertWithString:addstring];
    
    //(2)BOOL Function :COMPARE////////////////////////////////////////////////////
    //Are the numbers the same?///////////////////////////////////////////////////
    //Return message with YES or NO//////////////////////////////////////////////
    int int1 = 33;
    int int2 = 11;
    BOOL compareValue = [self compare:int1 with:int2];
    NSString *compareString = [NSString stringWithFormat:@"Are the values %d and %d equal? %@", int1, int2, compareValue?@"YES":@"NO"];
    [self displayAlertWithString:compareString];
    

    //(4)Function APPEND/////////////////////////////////////////////////////////
    //Using displayAlertWithString, Capture UIView//////////////////////////////
    //Append function with two strings/////////////////////////////////////////
   
    NSString *appendString = [self append:@"Project " with:@"Three!"];
    [self displayAlertWithString:appendString];
}


    //(6)Functions ADD and BOOL/////////////////////////////////////////////////
    //This function will add the values of the ADD Function////////////////////
    -(int)add:(int)num1 with:(int)num2{
    return num1 + num2;
}

    //(9)This function will comapre the values of the BOOL Function COMPARE///
-(BOOL)compare:(int)num1 with:(int)num2{
    if (num1 == num2) {
        return YES;
    }else{
        return NO;
    }
}

    //(3)Function APPEND with NSMutable/////////////////////////////////////////
    //Take two NSStrings///////////////////////////////////////////////////////
    //Return a new NSString containing the appended strings///////////////////
    //Using and NSMutable string and append the menthod//////////////////////
    // string1: Project string2: Three 
-(NSString *)append:(NSString *)string1 with:(NSString *)string2{
    NSMutableString *appendedString = [NSMutableString stringWithString:string1];
    NSString *string = [appendedString stringByAppendingString:string2];
    return string;
}

    //(5)UIAlertView///////////////////////////////////////////////////////////
    //Function DisplayAlertWithString/////////////////////////////////////////
    //This function will take as a parameter an NSString/////////////////////
-(void)displayAlertWithString:(NSString *)string{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:string delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end