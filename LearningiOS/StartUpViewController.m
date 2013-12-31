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
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:mainView.bounds];
    
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [mainView addSubview:scrollView];
    
    CGFloat y = 10;
    for (int i=0; i<30; i++) {
        UILabel *lab = [UILabel new];
        lab.text = [NSString stringWithFormat:@"Label %d", i+1];
        [lab sizeToFit];
        
        CGRect f = lab.frame;
        f.origin = CGPointMake(10, y);
        lab.frame = f;
        [scrollView addSubview: lab];
        y+= lab.bounds.size.height + 10;
    }
    
    CGSize size = scrollView.bounds.size;
    size.height = y;
    
    scrollView.contentSize = size;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
