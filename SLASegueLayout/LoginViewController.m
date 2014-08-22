//
//  ViewController.m
//  SLASegueLayout
//
//  Created by Nathan Cope on 8/21/14.
//  Copyright (c) 2014 PlumChoice. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self performSegueWithIdentifier:@"LoginToMenuSegue" sender:self];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindToMenu:(UIStoryboardSegue *)sender{
    
}


@end
