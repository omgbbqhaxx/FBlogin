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


@synthesize userMail, mailLabel, userID, userName, nameLabel, pp;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    mailLabel.text = userMail;
    nameLabel.text = userName;
    NSString *someOtherString = [NSString stringWithFormat: @"http://graph.facebook.com/%@/picture?height=200&width=200", userID];
    
    NSURL *imageURL = [NSURL URLWithString:someOtherString];
    NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
    UIImage *myimg = [UIImage imageWithData:imageData];
    [pp setImage:myimg];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)logMeOut:(id)sender {
    
    [FBSession.activeSession closeAndClearTokenInformation];
    
    [self performSegueWithIdentifier:@"s2" sender:self];
    
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
