//
//  ViewController.m
//  check
//
//  Created by Krittika on 3/14/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

@synthesize viewText, enterText;

- (void)viewDidLoad{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated{
    [enterText resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//extension textFieldShouldReturn(


- (IBAction)addTextButton:(id)sender {
    NSString * input = enterText.text;
    viewText.text = input;
}
@end

