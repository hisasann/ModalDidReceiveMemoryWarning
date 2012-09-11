//
//  TopViewController.m
//  ModalDidReceiveMemoryWarning
//
//  Created by hisamatsu on 12/09/11.
//
//

#import "TopViewController.h"

@interface TopViewController ()

- (IBAction)showList:(id)sender;
@end

@implementation TopViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    NSLog(@"TopViewController - viewDidLoad");
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidUnload {
    NSLog(@"TopViewController - viewDidUnload");
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)showList:(id)sender {
    UIViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"List"];
    [self.navigationController pushViewController:viewController animated:YES];
}
@end
