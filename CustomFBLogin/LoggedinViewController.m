//
//  LoggedinViewController.m
//  CustomFBLogin
//
//  Created by Yasin Aktimur on 21.08.2014.
//  Copyright (c) 2014 Yasin Aktimur. All rights reserved.
//

#import "LoggedinViewController.h"

@interface LoggedinViewController ()

@end

@implementation LoggedinViewController


@synthesize userMail, mailLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    mailLabel.text = userMail;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)logMeOut:(id)sender {
    [FBSession.activeSession closeAndClearTokenInformation];
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
