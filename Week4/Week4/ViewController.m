//
//  ViewController.m
//  Week4
//
//  Created by Desire Gardner on 1/30/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "ViewController.h"

#define LOGIN_BUTTON 0
#define DATE_BUTTON 1
#define DEV_BUTTON 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    ////USER NAME///////////////////////////////////////////////////////////////////////////
    self.view.backgroundColor = [UIColor orangeColor];
    
    
    ////USER NAME LABEL///////////////////////////////////////////////////////////////////////////
    UILabel *unLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 53.0f, 96.0f, 25.0f)];

    if (unLabel != nil)
    { 
        unLabel.text = @"  Username:"; //TEXT
    }
    [self.view addSubview:unLabel];

    ////USER NAME TEXT FIELD BOX///////////////////////////////////////////////////////////////////////////
    userName = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 50.0f, 200.0f, 30.0f)];
    if (userName!= nil)
    {userName.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:userName];
    }
    ////LOGIN BUTTON///////////////////////////////////////////////////////////////////////////
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil) {
        loginButton.tag = LOGIN_BUTTON;
        loginButton.frame = CGRectMake(10.0f, 100.0f, 75.0f, 35.0f);
        loginButton.tintColor = [UIColor blueColor];
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginButton];
    }
    ////ERROR MESSAGE TEXT UI LABEL///////////////////////////////////////////////////////////////////////////
    textLogin = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 180.0f, 300.0f, 25.0f)];
    if (textLogin != nil)
    { 
       textLogin.text = @"           Please Enter Username";//ERROR TEXT
    }
    [self.view addSubview:textLogin];
    
    ////SHOW DATE BUTTON UI///////////////////////////////////////////////////////////////////////////
    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil) {
        dateButton.tag = DATE_BUTTON;
        dateButton.tintColor = [UIColor blueColor];
        dateButton.frame = CGRectMake(10.0f, 240.0f, 100.0f, 35.0f);
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateButton];
    }
    
    ////INFO BUTTON UI///////////////////////////////////////////////////////////////////////////
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil) {
        infoButton.tag = DEV_BUTTON;
        infoButton.frame = CGRectMake(10.0f, 300.0f, 25.0f, 25.0f);
        infoButton.backgroundColor = [UIColor whiteColor];
        infoButton.tintColor = [UIColor blueColor];
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoButton];
    }
    devInfo = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 330.0f, 300.0f, 70.0f)];
    if (devInfo != nil)
    {
        
    }
    [self.view addSubview:devInfo];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

    ////FUNCTIONS FOR BUTTONS///////////////////////////////////////////////////////////////////////////
-(void)onClick:(UIButton*)button
{
    if(button.tag == LOGIN_BUTTON && userName.text == 0)//LOGIN
    {
        textLogin.text = @"         Username cannot be empty.";// ERROR MESSAGE FOR USERNAME TEXT
        textLogin.textColor = [UIColor redColor];
        textLogin.backgroundColor = [UIColor lightGrayColor];

    }else if (button.tag == LOGIN_BUTTON)
    {
        NSString *user = [[NSString alloc] initWithString:userName.text];
        textLogin.text = [NSString stringWithFormat:@"          User: '%@' is logged in", user];//IF USER LOGGED IN
        textLogin.numberOfLines = 3;
    }else if (button.tag == DATE_BUTTON)
    {
        NSDate *date = [NSDate date];//DATE
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        if (dateFormatter != nil)
        {
            [dateFormatter setDateFormat:@"MMMM d, yyyy h:mm:s:a zzzz"];
            NSString* dateLabel = [dateFormatter stringFromDate:date];
            UIAlertView *dateAlertView = [[UIAlertView alloc] initWithTitle:@"Date" message:dateLabel delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            if(dateAlertView != nil)
            {
                [dateAlertView show];
            }
        }
    }else if (button.tag == DEV_BUTTON)
    {
        devInfo.text = @" This application was created by:Desire Revon";
        devInfo.textColor = [UIColor blueColor];
        devInfo.backgroundColor = [UIColor lightGrayColor];

        devInfo.numberOfLines = 4;
        
    }
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