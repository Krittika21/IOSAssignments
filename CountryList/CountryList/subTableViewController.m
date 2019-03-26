//
//  subTableViewController.m
//  CountryList
//
//  Created by Krittika on 3/24/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import "subTableViewController.h"
#import "TableViewCell.h"
@interface subTableViewController ()

@end

@implementation subTableViewController
@synthesize dict, data, filePath;

- (void)TheJson
{
    dict = [self JSONFromFile];
    
    //NSArray *countries = [dict objectForKey:@"countryCell"];
    //NSLog(@"%@",dict);

//    for (NSDictionary *con in countries)
//    {
//        NSString *name = [con objectForKey:@"countryCell"];
//        NSLog(@"name%@", name);
//
//    }
}
- (NSArray *)JSONFromFile
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"countrylist" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
     [self TheJson];
}
   
//    NSError *error = nil;
//    _filePath = [[NSBundle mainBundle] pathForResource:@"countrylist" ofType:@"json"];
//    _data = [NSData dataWithContentsOfFile:_filePath];
    // Remember here, __dict is an array, I kept the same name as your code but it is NOT a dictionary.
//    _dict = [NSJSONSerialization JSONObjectWithData:_data options:0 error:&error];
//    //countryName = [_dictArray objectForKey:@"name"];
//     [self TheJson];



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return self.dict.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   TableViewCell *countryCell = [tableView dequeueReusableCellWithIdentifier:@"countryCell" forIndexPath:indexPath];
    
    NSDictionary *dictTwo = (NSDictionary*)[dict objectAtIndex:indexPath.row];

    // Configure the cell...
    countryCell.name.text = [NSString stringWithFormat:@"%@" , [dictTwo objectForKey:@"name"]];
    countryCell.countryCode.text = [NSString stringWithFormat:@"%@" , [dictTwo objectForKey:@"countryCode"]];
    countryCell.phoneCode.text = [NSString stringWithFormat:@"%@" , [dictTwo objectForKey:@"phoneCode"]];
    countryCell.currencyCode.text = [NSString stringWithFormat:@"%@" , [dictTwo objectForKey:@"currencyCode"]];
    
    NSString *imageString = @"data.image/ipg;base64,";
    imageString = [imageString stringByAppendingString:[dictTwo objectForKey:@"media"]];
    NSURL *mediaURL = [NSURL URLWithString:imageString];
    countryCell.media.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:mediaURL]];
    
   return countryCell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
