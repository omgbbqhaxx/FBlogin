//
//  FirstViewController.m
//  CustomFBLogin
//
//  Created by Yasin Aktimur on 21.08.2014.
//  Copyright (c) 2014 Yasin Aktimur. All rights reserved.
//

#import "FirstViewController.h"
#import "LoggedinViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize loginButton, fvcMail, gif, notificationgeldimi;





- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(fixUser:) name:@"userinfo" object:nil];
    
    UIImage *img = [UIImage imageNamed:@"cs.gif"];
    [gif startAnimating];
    [gif setImage:img];
    loginButton.hidden = YES;
    

}



-(void)fixUser: (NSNotification *) notification {
    
    fvcMail = [notification.userInfo objectForKey:@"email"];
    NSLog(@"Notif : %@", [notification.userInfo objectForKey:@"email"]);
      [self performSegueWithIdentifier:@"s1" sender:self];
    
    
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    LoggedinViewController *livc = [segue destinationViewController];
    livc.userMail = fvcMail;

}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
