//
//  1stViewController.m
//  EmployeeDetails
//
//  Created by Krittika on 3/25/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import "1stViewController.h"

@interface _stViewController ()

@end

@implementation _stViewController

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

- (IBAction)Show:(id)sender {
    UITableViewController *tableView = [self.storyboard instantiateViewControllerWithIdentifier:@"TableViewController"];
    [self.navigationController pushViewController:tableView animated:YES];
}

- (IBAction)radioMale:(id)sender {
    self.radioMale.selected = !self.radioMale.isSelected;
    
    if (self.radioMale.isSelected)
    {
        self.radioFemale.selected = NO;
    }
    else{
        self.radioMale.selected = YES;
    }
}

- (IBAction)radioFemale:(id)sender {
    self.radioFemale.selected = !self.radioFemale.isSelected;
    
    if (self.radioFemale.isSelected)
    {
        self.radioMale.selected = NO;
    }
    else{
        self.radioFemale.selected = YES;
    }
}
@end
