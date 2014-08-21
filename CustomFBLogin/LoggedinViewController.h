//
//  LoggedinViewController.h
//  CustomFBLogin
//
//  Created by Yasin Aktimur on 21.08.2014.
//  Copyright (c) 2014 Yasin Aktimur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoggedinViewController : UIViewController

@property NSString * userMail;
@property NSString * userID;
@property NSString * userName;
@property (weak, nonatomic) IBOutlet UILabel *mailLabel;
@property (weak, nonatomic) IBOutlet UIImageView *pp;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;


@end
