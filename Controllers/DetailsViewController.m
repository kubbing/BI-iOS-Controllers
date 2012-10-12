//
//  DetailsViewController.m
//  Controllers
//
//  Created by Jakub Hladík on 10.10.12.
//  Copyright (c) 2012 Jakub Hladík. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

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
    
    self.navigationItem.title = [[self class] description];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 50, 50)];
    label.text = _text;
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
