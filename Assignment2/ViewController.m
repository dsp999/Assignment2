//
//  ViewController.m
//  Assignment2
//
//  Created by Don Panditha on 9/09/13.
//  Copyright (c) 2013 Don Panditha. All rights reserved.
//

#import "ViewController.h"
#import "RandomObjectFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)pressMe:(id)sender
{
    id aObj =  [RandomObjectFactory randomNSObject];
    if([aObj isKindOfClass:[UIView class]])
    {
        UIView *myView =(UIView*) aObj;
        if([myView respondsToSelector:@selector(backgroundColor)])
        {
            CGFloat red = (CGFloat)random()/(CGFloat)RAND_MAX;
            CGFloat blue = (CGFloat)random()/(CGFloat)RAND_MAX;
            CGFloat green = (CGFloat)random()/(CGFloat)RAND_MAX;
            UIColor *randomColor = [UIColor colorWithRed:red green:blue blue:green alpha:1];
            myView.backgroundColor = randomColor;
            [self.view addSubview:myView];
        }
    }
}



@end
