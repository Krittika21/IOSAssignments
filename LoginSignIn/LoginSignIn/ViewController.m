//
//  ViewController.m
//  LoginSignIn
//
//  Created by Krittika on 3/16/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import "ViewController.h"
#import "SignInViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)LogIn:(id)sender {
    printf("Login Successful!");
}

- (IBAction)SignIn:(id)sender
{
    SignInViewController *signInView = [self.storyboard instantiateViewControllerWithIdentifier:@"SignInViewController"];
    [self.navigationController pushViewController:signInView animated:YES];
}

@end
