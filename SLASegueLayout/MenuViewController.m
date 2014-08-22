//
//  MenuViewController.m
//  SLASegueLayout
//
//  Created by Nathan Cope on 8/21/14.
//  Copyright (c) 2014 PlumChoice. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()
@property (weak, nonatomic) IBOutlet UINavigationItem *navigationBar;

@end

@implementation MenuViewController{
    BOOL didStart;
}

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
    
    self.navigationBar.hidesBackButton = true;
    if(!didStart)
    {
        [self performSegueWithIdentifier:@"MenuToPartnersSegue" sender:self];
        didStart = true;
        
    }
    
}

-(void)viewDidAppear:(BOOL)animated{
    

}

- (void)viewDidLayoutSubviews{

}

- (IBAction)partnersButtonPressed:(id)sender {
    [self performSegueWithIdentifier:@"MenuToPartnersSegue" sender:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    NSLog(@"Test");
    return true;
}

- (IBAction)unwindToMenu:(UIStoryboardSegue *)sender{
    //[self performSegueWithIdentifier:@"MenuToPartnersSegue" sender:self];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
