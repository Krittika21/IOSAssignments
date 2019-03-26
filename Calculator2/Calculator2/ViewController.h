//
//  ViewController.h
//  Calculator
//
//  Created by Krittika on 3/19/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import <UIKit/UIKit.h>

int operation;
double displayNumber;
double resultNumber;
BOOL isDecimal;

@interface ViewController : UIViewController{
    
    __weak IBOutlet UILabel *lblMyResult;
   // UILabel *result;
    // IBOutlet UILabel *result;
}

- (void)setResult:(int)theNumber;
- (void)operatingNumber:(int)theNumber;

- (IBAction)clear:(id)sender;
- (IBAction)division:(id)sender;
- (IBAction)multiplication:(id)sender;
- (IBAction)subtraction:(id)sender;
- (IBAction)addition:(id)sender;
- (IBAction)equalsTo:(id)sender;
- (IBAction)decimal:(id)sender;

- (IBAction)zeroDigit:(id)sender;
- (IBAction)oneDigit:(id)sender;
- (IBAction)twoDigit:(id)sender;
- (IBAction)threeDigit:(id)sender;
- (IBAction)fourDigit:(id)sender;
- (IBAction)fiveDigit:(id)sender;
- (IBAction)sixDigit:(id)sender;
- (IBAction)sevenDigit:(id)sender;
- (IBAction)eightDigit:(id)sender;
- (IBAction)nineDigit:(id)sender;

@end

