//
//  3rdViewController.h
//  EmployeeDetails
//
//  Created by Krittika on 3/25/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface _rdViewController : UIViewController
- (IBAction)update:(id)sender;
- (IBAction)radioMaleUp:(id)sender;
- (IBAction)radioFemaleUp:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *radioMaleUp;
@property (weak, nonatomic) IBOutlet UIButton *radioFemaleUp;


@end
