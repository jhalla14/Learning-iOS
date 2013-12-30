//
//  StartUpViewController.m
//  LearningiOS
//
//  Created by Joshua Hall  on 12/29/13.
//  Copyright (c) 2013 Queue. All rights reserved.
//

#import "StartUpViewController.h"

@interface StartUpViewController ()

@end

@implementation StartUpViewController

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
	// Do any additional setup after loading the view.
    
    UIView *mainView = self.view;
//    mainView.hidden = YES;
//    UIView *v = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 50, 50)];
//    [v setBackgroundColor:[UIColor redColor]];
//    [mainView addSubview:v];
    
    UIView *v1 = [[UIView alloc] initWithFrame:CGRectMake(113, 111, 132, 194)];
    v1.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1];
   
//    UIView *v2 = [[UIView alloc]initWithFrame:CGRectMake(41, 56, 132, 194)];
    UIView *v2 = [[UIView alloc] initWithFrame:CGRectInset(v1.bounds, 10, 10)];
    v2.backgroundColor = [UIColor colorWithRed:.5 green:1 blue:0 alpha:1];
    
    UIView *v3 = [[UIView alloc]initWithFrame:CGRectMake(43, 197, 160, 230)];
    v3.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    
    [mainView addSubview:v1];
//    [mainView addSubview:v2];
    [v1 addSubview:v2];
    [mainView addSubview:v3];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
