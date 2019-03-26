//
//  ViewController.h
//  LoginSignIn
//
//  Created by Krittika on 3/16/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *Email;
@property (weak, nonatomic) IBOutlet UITextField *Password;
- (IBAction)LogIn:(id)sender;
- (IBAction)SignIn:(id)sender;



@end

