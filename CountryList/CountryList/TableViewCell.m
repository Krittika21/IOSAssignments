//
//  TableViewCell.m
//  CountryList
//
//  Created by Krittika on 3/24/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import "TableViewCell.h"
#import "subTableViewController.h"

@implementation TableViewCell
@synthesize media, name, countryCode, phoneCode, currencyCode;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
