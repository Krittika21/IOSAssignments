//
//  1stViewController.h
//  EmployeeDetails
//
//  Created by Krittika on 3/25/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface _stViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
@property (weak, nonatomic) IBOutlet UITextField *EmployeeId;
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextView *address;
@property (weak, nonatomic) IBOutlet UIButton *radioMale;
@property (weak, nonatomic) IBOutlet UIButton *radioFemale;
@property (weak, nonatomic) IBOutlet UIButton *Show;

- (IBAction)Show:(id)sender;
- (IBAction)radioMale:(id)sender;
- (IBAction)radioFemale:(id)sender;
@end
