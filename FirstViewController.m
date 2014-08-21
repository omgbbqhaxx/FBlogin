//
//  FirstViewController.m
//  CustomFBLogin
//
//  Created by Yasin Aktimur on 21.08.2014.
//  Copyright (c) 2014 Yasin Aktimur. All rights reserved.
//

#import "FirstViewController.h"
#import "LoggedinViewController.h"
#import "AppDelegate.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize loginButton, fvcMail, gif, fvcID, fvcName;





- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(fixUser:) name:@"userinfo" object:nil];
    
    UIImage *img = [UIImage imageNamed:@"cs.gif"];
    [gif setImage:img];
    
    if (FBSession.activeSession.state == FBSessionStateOpen || FBSession.activeSession.state == FBSessionStateOpenTokenExtended) {
        loginButton.hidden = YES;
        
    } else {
        loginButton.hidden = NO;
       
    }
    
    

}



-(void)fixUser: (NSNotification *) notification {
    
    fvcMail = [notification.userInfo objectForKey:@"email"];
    fvcName = [notification.userInfo objectForKey:@"first_name"];
    fvcID = [notification.userInfo objectForKey:@"id"];
    
    NSLog(@"Notif : %@", [notification.userInfo objectForKey:@"email"]);
      [self performSegueWithIdentifier:@"s1" sender:self];
    
    
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    LoggedinViewController *livc = [segue destinationViewController];
    livc.userMail = fvcMail;
    livc.userName = fvcName;
    livc.userID = fvcID;
    

}



- (IBAction)tap:(id)sender {
    
    
    if (FBSession.activeSession.state == FBSessionStateOpen
        || FBSession.activeSession.state == FBSessionStateOpenTokenExtended) {
        // Close the session and remove the access token from the cache
        // The session state handler (in the app delegate) will be called automatically
        [FBSession.activeSession closeAndClearTokenInformation];
        // If the session state is not any of the two "open" states when the button is clicked
    } else {
        // Open a session showing the user the login UI
        // You must ALWAYS ask for public_profile permissions when opening a session
        [FBSession openActiveSessionWithReadPermissions:@[@"public_profile", @"email"]
                                           allowLoginUI:YES
                                      completionHandler:
         ^(FBSession *session, FBSessionState state, NSError *error) {
             // Retrieve the app delegate
             AppDelegate* appDelegate = [UIApplication sharedApplication].delegate;
             // Call the app delegate's sessionStateChanged:state:error method to handle session state changes
             [appDelegate sessionStateChanged:session state:state error:error];
         }];
    }
    
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
