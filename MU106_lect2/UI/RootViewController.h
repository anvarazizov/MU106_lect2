//
//  RootViewController.h
//  MU106_lect2
//
//  Created by Anvar Azizov on 2013-10-26.
//  Copyright (c) 2013 Anvar Azizov. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RootViewControllerDelegate <NSObject>

-(void)didButtonClick;

@end

@interface RootViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) id<RootViewControllerDelegate> rootDelegate;

@end
