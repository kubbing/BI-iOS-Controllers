//
//  ContentViewController.m
//  Controllers
//
//  Created by Jakub Hladík on 10.10.12.
//  Copyright (c) 2012 Jakub Hladík. All rights reserved.
//

#import "ContentViewController.h"
#import "DetailsViewController.h"
#import "WebViewController.h"
#import "GalleryViewController.h"

@interface ContentViewController ()

@end

@implementation ContentViewController

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
    self.scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, 480);
    
    self.firstButton.titleLabel.numberOfLines = 2;
    self.firstButton.titleLabel.lineBreakMode = UILineBreakModeWordWrap;
    
    self.secondButton.titleLabel.numberOfLines = 2;
    self.secondButton.titleLabel.lineBreakMode = UILineBreakModeWordWrap;
    
    self.thirdButton.titleLabel.numberOfLines = 2;
    self.thirdButton.titleLabel.lineBreakMode = UILineBreakModeWordWrap;
    [self.thirdButton addTarget:self action:@selector(thirdButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    self.fourthButton.titleLabel.numberOfLines = 2;
    self.fourthButton.titleLabel.lineBreakMode = UILineBreakModeWordWrap;
    [self.fourthButton addTarget:self action:@selector(fourthButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    self.manualModalButton.titleLabel.numberOfLines = 2;
    self.manualModalButton.titleLabel.lineBreakMode = UILineBreakModeWordWrap;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)thirdButtonTapped:(id)sender
{
    WebViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"FirstViewController"];
    [self.navigationController pushViewController:controller animated:YES];
}

- (void)fourthButtonTapped:(id)sender
{
    GalleryViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self.navigationController pushViewController:controller animated:YES];
}

- (IBAction)manualModalButtonTapped:(id)sender
{
    UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:controller];
    navController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self.navigationController presentViewController:navController animated:YES completion:nil];
}

- (void)viewDidUnload {
    [self setFirstButton:nil];
    [self setSecondButton:nil];
    [self setThirdButton:nil];
    [self setFourthButton:nil];
    [self setManualModalButton:nil];
    [self setScrollView:nil];
    [super viewDidUnload];
}

@end
