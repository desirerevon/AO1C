//
//  ViewController.m
//  Fifty Shades Of Grey
//
//  Created by Desire Gardner on 1/16/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    //Book Title "Fifty Shades Of Gray"///////////////////////////////////////
    title = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 300, 25)];
        if(title != nil){
            title.text = @"Fifty Shades Of Gray";
            title.textColor = [UIColor whiteColor];
            title.backgroundColor = [UIColor blueColor];
            title.textAlignment = NSTextAlignmentCenter;
    }
    [self.view addSubview: title];
    
    //Author Label/////////////////////////////////////////////////////////////
    
    authorLabel = [[UILabel alloc] initWithFrame: CGRectMake(10, 70, 100, 25)];
    if(authorLabel != nil){
        authorLabel.text = @"Author:";
        authorLabel.textColor = [UIColor blackColor];
        authorLabel.backgroundColor = [UIColor whiteColor];
        authorLabel.textAlignment = NSTextAlignmentRight;
    }
    [self.view addSubview: authorLabel];
    
    //Author : E L James///////////////////////////////////////////////////////
    author = [[UILabel alloc] initWithFrame: CGRectMake(110, 70, 203, 25)];
    if(author != nil){
        author.text= @" E L James";
        author.textColor = [UIColor magentaColor];
        author.backgroundColor =[UIColor purpleColor];
        author.textAlignment = NSTextAlignmentLeft;
        
    }
    [self.view addSubview:author];
    
    //Published Label///////////////////////////////////////////////////////////
    
   publishedLabel = [[UILabel alloc] initWithFrame: CGRectMake(10, 100, 99, 25)];
    if(author != nil){
        publishedLabel.text= @"Published:";
        publishedLabel.textColor = [UIColor whiteColor];
        publishedLabel.backgroundColor =[UIColor blackColor];
        publishedLabel.textAlignment = NSTextAlignmentRight;
        
    }
    [self.view addSubview:publishedLabel];
    
    // Date 20 June 2011////////////////////////////////////////////////////////
    published = [[UILabel alloc] initWithFrame: CGRectMake(110, 100, 205, 25)];
    if(published != nil){
        published.text= @" 20 June 2011";
        published.textColor = [UIColor blackColor];
        published.backgroundColor =[UIColor redColor];
        published.textAlignment = NSTextAlignmentLeft;
        
    }
    [self.view addSubview:published];
    
    //Summary Label//////////////////////////////////////////////////////////////
    summaryLabel = [[UILabel alloc] initWithFrame: CGRectMake(10, 130, 100, 25)];
    if(summaryLabel != nil){
        summaryLabel.text= @"Summary:";
        summaryLabel.textColor = [UIColor cyanColor];
        summaryLabel.backgroundColor =[UIColor orangeColor];
        summaryLabel.textAlignment = NSTextAlignmentRight;
        
    }
    [self.view addSubview:summaryLabel];
    
    //Summary//////////////////////////////////////////////////////////////////
    summary = [[UILabel alloc] initWithFrame:CGRectMake(9, 160, 300, 100)];
    if (summary != nil) {
        summary.text = @"Young girl falls in love with a billionaire who manipulates her into signing a contract to gain sexual control of her through Bonadge.";
       summary.textColor = [UIColor blackColor];
        summary.backgroundColor = [UIColor yellowColor];
        summary.textAlignment = NSTextAlignmentCenter;
        summary.numberOfLines = 7;
    }
    [self.view addSubview: summary];
    
    //Item Label///////////////////////////////////////////////////////////////
     itemLabel= [[UILabel alloc] initWithFrame: CGRectMake(9, 265, 105, 25)];
    if(itemLabel != nil){
        itemLabel.text= @"List Of Items:";
        itemLabel.textColor = [UIColor brownColor];
        itemLabel.backgroundColor =[UIColor greenColor];
        itemLabel.textAlignment = NSTextAlignmentRight;
        
    }
    [self.view addSubview:itemLabel];
    
    //Array of items////////////////////////////////////////////////////////////
    NSArray *itemsArray = [[NSArray alloc] initWithObjects:@"Sex",@"Control", @"Money", @"Manipulation", @"Bondage", nil];
    NSMutableArray *muteArray = [[NSMutableArray alloc] initWithArray:itemsArray];
    
    //Items////////////////////////////////////////////////////////////

    items= [[UILabel alloc] initWithFrame:CGRectMake(10, 295, 300, 50)];
    
    if (items != nil) {
        items.text = [NSString stringWithFormat:@"%@, %@, %@, %@ and %@", [muteArray objectAtIndex:0], [muteArray objectAtIndex:1], [muteArray objectAtIndex:2], [muteArray objectAtIndex:3], [muteArray objectAtIndex:4] ];
       items.textColor = [UIColor purpleColor];
        items.backgroundColor = [UIColor brownColor];
        items.textAlignment = NSTextAlignmentCenter;
        items.numberOfLines = 5;
    }
    [self.view addSubview: items];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


@end
