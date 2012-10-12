//
//  GalleryViewController.m
//  Controllers
//
//  Created by Jakub Hladík on 10.10.12.
//  Copyright (c) 2012 Jakub Hladík. All rights reserved.
//

#import "GalleryViewController.h"

@interface GalleryViewController ()

@property (nonatomic, strong) NSArray *array;

@end

@implementation GalleryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    
    return self;
}

- (void)setup
{
    self.hidesBottomBarWhenPushed = YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.navigationItem.title = [[self class] description];
    
    UIImage *image1 = [UIImage imageNamed:@"1.gif"];
    UIImage *image2 = [UIImage imageNamed:@"2.gif"];
    UIImage *image3 = [UIImage imageNamed:@"4.jpg"];
    _array = @[ image1, image2, image3 ];
    
    NSInteger counter = 0;
    for (UIImage *image in _array) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        CGRect rect = self.scrollView.bounds;
        rect.origin.x = counter * 320;
        imageView.frame = rect;
        [self.scrollView addSubview:imageView];
        counter++;
    }
    
    self.scrollView.pagingEnabled = YES;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
}
- (void)viewWillLayoutSubviews
{
    /*
     contentSize je rozmer celeho soupaciho pasu ktery se zobrazuje pomoci scrollView
     problem je ze velikosti view nejsou ve viewDidLoad nejsou jeste nastaveny
     proto to natavime tady, tesne predtim nez se bude lyoutovat nase subview
     */
    self.scrollView.contentSize = CGSizeMake(_array.count * 320, self.view.bounds.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
