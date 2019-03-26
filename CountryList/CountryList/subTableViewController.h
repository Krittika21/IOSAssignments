//
//  subTableViewController.h
//  CountryList
//
//  Created by Krittika on 3/24/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface subTableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITableView *tView;


@property (nonatomic, strong) NSData *data;
@property (nonatomic, strong) NSString *filePath;
@property (nonatomic, strong) NSArray *dict ;

@end
