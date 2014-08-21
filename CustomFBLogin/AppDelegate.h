//
//  AppDelegate.h
//  CustomFBLogin
//
//  Created by Yasin Aktimur on 19.08.2014.
//  Copyright (c) 2014 Yasin Aktimur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) FirstViewController *customLoginViewController;

@property NSString *userMail;
@property NSString *userID;
@property NSString *userName;

- (void)sessionStateChanged:(FBSession *)session state:(FBSessionState) state error:(NSError *)error;
- (void)userLoggedIn;
- (void)userLoggedOut;
@end
