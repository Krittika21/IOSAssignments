//
//  SignInViewController.m
//  LoginSignIn
//
//  Created by Krittika on 3/18/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import "SignInViewController.h"
#import "ViewController.h"
@interface SignInViewController ()

@end

@implementation SignInViewController
@synthesize maleRadio, femaleRadio;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)maleRadio:(id)sender {
    self.maleRadio.selected = !self.maleRadio.isSelected;
    
    if (self.maleRadio.isSelected)
    {
        self.femaleRadio.selected = NO;
    }
    else{
        self.maleRadio.selected = YES;
    }
}

- (IBAction)femaleRadio:(id)sender {
    self.femaleRadio.selected = !self.femaleRadio.isSelected;
    
    if (self.femaleRadio.isSelected)
    {
        self.maleRadio.selected = NO;
    }
    else{
        self.femaleRadio.selected = YES;
    }
}

- (IBAction)setSign:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
