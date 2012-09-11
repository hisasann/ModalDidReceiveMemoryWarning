//
//  ViewController.m
//  ModalDidReceiveMemoryWarning
//
//  Created by hisamatsu on 08/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"ViewController - viewDidLoad");
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

//    self.navigationController.navigationBarHidden = YES;
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"NavView"];

    [self addChildViewController:viewController];
    [self.view addSubview:viewController.view];
}

- (void)viewDidUnload {
    NSLog(@"ViewController - viewDidUnload");
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end