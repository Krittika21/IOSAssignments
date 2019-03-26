//
//  ViewController.m
//  CountryList
//
//  Created by Krittika on 3/22/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self TheJson];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)TheJson
{
    NSError *error = nil;
    
   
    
    NSDictionary *dict = [self JSONFromFile];
    
    NSArray *countries = [dict objectForKey:@"countryCell"];
    NSLog(@"%@",dict);
   for (NSDictionary *con in countries)
   {
       NSString *name = [con objectForKey:@"countryCell"];
       NSLog(@"name%@", name);
       NSString *countryC = [con objectForKey:@"countryCell"];
       NSLog(@"countryCode%@", countryC);
       NSString *currencyC = [con objectForKey:@"countryCell"];
       NSLog(@"currencyCode%@", currencyC);
       NSString *phoneC = [con objectForKey:@"countryCell"];
       NSLog(@"phoneCode%@", phoneC);
       NSString *Image = [con objectForKey:@"countryCell"];
       NSLog(@"media%@", Image);
   }
}
- (NSDictionary *)JSONFromFile
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"countrylist" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}
@end
