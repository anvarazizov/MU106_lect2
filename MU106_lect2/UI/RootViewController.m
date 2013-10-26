//
//  RootViewController.m
//  MU106_lect2
//
//  Created by Anvar Azizov on 2013-10-26.
//  Copyright (c) 2013 Anvar Azizov. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.lblTitle.text = @"Hello, Bro!";
    [self.lblTitle setTransform:CGAffineTransformMakeRotation(-M_PI / 2)];
    NSLog(@"%@", self.view);
    
    NSString* myString = @"Hello, Bro!";
    NSLog(@"my string %@", myString);
    NSLog(@"my string length is %d", [myString length]);
    
    //selector example
    if ([myString respondsToSelector:@selector(length)]){
        NSLog(@"my string length responds %d", [myString length]);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickedAction:(id)sender {
    if ([self.rootDelegate respondsToSelector:@selector(didButtonClick)]) {
        [self.rootDelegate didButtonClick];
        NSLog(@"ololo");
    }
    
}

@end
