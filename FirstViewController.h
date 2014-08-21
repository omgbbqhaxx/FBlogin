//
//  FirstViewController.h
//  CustomFBLogin
//
//  Created by Yasin Aktimur on 21.08.2014.
//  Copyright (c) 2014 Yasin Aktimur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property NSString *fvcMail;
@property NSString *fvcID;
@property NSString *fvcName;
@property (weak, nonatomic) IBOutlet UIImageView *gif;

@end
