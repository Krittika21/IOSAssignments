//
//  TableViewCell.h
//  EmployeeDetails
//
//  Created by Krittika on 3/25/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *profile2Image;
@property (weak, nonatomic) IBOutlet UILabel *secondName;
@property (weak, nonatomic) IBOutlet UILabel *secondPosition;
@property (weak, nonatomic) IBOutlet UILabel *gender;

@end
