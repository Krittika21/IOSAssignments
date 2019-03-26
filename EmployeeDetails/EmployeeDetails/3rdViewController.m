//
//  3rdViewController.m
//  EmployeeDetails
//
//  Created by Krittika on 3/25/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import "3rdViewController.h"

@interface _rdViewController ()

@end

@implementation _rdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)update:(id)sender {
     [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)radioMaleUp:(id)sender {
    self.radioMaleUp.selected = !self.radioMaleUp.isSelected;
    
    if (self.radioMaleUp.isSelected)
    {
        self.radioFemaleUp.selected = NO;
    }
    else{
        self.radioMaleUp.selected = YES;
    }
}

- (IBAction)radioFemaleUp:(id)sender {
    self.radioFemaleUp.selected = !self.radioFemaleUp.isSelected;
    
    if (self.radioFemaleUp.isSelected)
    {
        self.radioMaleUp.selected = NO;
    }
    else{
        self.radioFemaleUp.selected = YES;
    }
}
- (IBAction)goBack:(id)sender {
}
@end
