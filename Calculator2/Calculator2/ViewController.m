//
//  ViewController.m
//  Calculator
//
//  Created by Krittika on 3/19/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    isDecimal = false;
    resultNumber = 0.0;
    //lblMyResult.text = @"hello";
//    result.adjustsFontSizeToFitWidth = TRUE;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setResult:(int)theNumber
{
    if(!isDecimal)
    {
        displayNumber *= 10;
        displayNumber += theNumber;
        lblMyResult.text = [NSString stringWithFormat:@"%.0f", displayNumber];
    }
    else
    {
        lblMyResult.text = [lblMyResult.text stringByAppendingString:[NSString stringWithFormat:@"%d", theNumber]];
    }
    displayNumber = [lblMyResult.text floatValue];
}

- (void)operatingNumber:(int)theNumber
{
    isDecimal = false;
    if(resultNumber == 0)
    {
        resultNumber = displayNumber;
    }
    else
    {
        lblMyResult.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        switch (operation)
        {
            case 1:
                resultNumber /= displayNumber;
                break;
            case 2:
                resultNumber *= displayNumber;
                break;
            case 3:
                resultNumber -= displayNumber;
                break;
            case 4:
                resultNumber += displayNumber;
                break;
            default:
                break;
        }
    }
    operation = theNumber;
    displayNumber = 0;
}

- (IBAction)clear:(id)sender
{
    operation = 0;
    resultNumber = 0;
    displayNumber = 0;
    isDecimal = false;
    lblMyResult.text = [NSString stringWithFormat:@"%i",0];
}

- (IBAction)division:(id)sender
{
    if (resultNumber != 0)
    {
        [self operatingNumber:operation];
        lblMyResult.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [lblMyResult.text floatValue];
        resultNumber = 0;
    }
    [self operatingNumber:1];
}

- (IBAction)multiplication:(id)sender
{
    if (resultNumber != 0)
    {
        [self operatingNumber:operation];
        lblMyResult.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [lblMyResult.text floatValue];
        resultNumber = 0;
    }
    [self operatingNumber:2];
}

- (IBAction)subtraction:(id)sender
{
    if (resultNumber != 0)
    {
        [self operatingNumber:operation];
        lblMyResult.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [lblMyResult.text floatValue];
        resultNumber = 0;
    }
    [self operatingNumber:3];
}

- (IBAction)addition:(id)sender
{
    if (resultNumber != 0)
    {
        [self operatingNumber:operation];
        lblMyResult.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [lblMyResult.text floatValue];
        resultNumber = 0;
    }
    [self operatingNumber:4];
}

- (IBAction)equalsTo:(id)sender
{
    [self operatingNumber:operation];
    lblMyResult.text = [NSString stringWithFormat:@"%.2f", resultNumber];
    displayNumber = [lblMyResult.text floatValue];
    resultNumber = 0;
}

- (IBAction)decimal:(id)sender
{
    isDecimal = true;
    NSRange range = [lblMyResult.text rangeOfString:@"."];
    if(range.location == NSNotFound)
    {
        lblMyResult.text = [lblMyResult.text stringByAppendingString:@"."];
    }
}

- (IBAction)zeroDigit:(id)sender
{
    [self setResult:0];
}

- (IBAction)oneDigit:(id)sender
{
    [self setResult:1];
}

- (IBAction)twoDigit:(id)sender
{
    [self setResult:2];
}

- (IBAction)threeDigit:(id)sender
{
    [self setResult:3];
}

- (IBAction)fourDigit:(id)sender
{
    [self setResult:4];
}

- (IBAction)fiveDigit:(id)sender
{
    [self setResult:5];
}

- (IBAction)sixDigit:(id)sender
{
    [self setResult:6];
}

- (IBAction)sevenDigit:(id)sender
{
    [self setResult:7];
}

- (IBAction)eightDigit:(id)sender
{
    [self setResult:8];
}

- (IBAction)nineDigit:(id)sender
{
    [self setResult:9];
}
@end

