//
//  SignInViewController.h
//  LoginSignIn
//
//  Created by Krittika on 3/18/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import <UIKit/UIKit.h>

//@protocol ABC <NSObject>

//@end


@interface SignInViewController : UIViewController

@property(strong, nonatomic)IBOutlet UIButton *femaleRadio;
@property(strong, nonatomic)IBOutlet  UIButton *maleRadio;
@property (weak, nonatomic) UIButton *SignUp;

- (IBAction)maleRadio:(id)sender;
- (IBAction)femaleRadio:(id)sender;
- (IBAction)setSign:(id)sender;


@end
