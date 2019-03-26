//
//  TableViewCell.h
//  CountryList
//
//  Created by Krittika on 3/24/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *media;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *countryCode;
@property (weak, nonatomic) IBOutlet UILabel *phoneCode;
@property (weak, nonatomic) IBOutlet UILabel *currencyCode;

@end
