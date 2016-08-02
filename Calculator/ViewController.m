//
//  ViewController.m
//  Calculator
//
//  Created by Wei
//Fan on 8/2/16.
//  Copyright © 2016 Wei
//Fan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    int displayNumber;
    NSString *displayString;
}

@synthesize display;

-(void) displayResult
{
    displayString = [NSString stringWithFormat:@"%d", displayNumber];
    display.text = displayString;
}

-(IBAction)clickNumber1Button
{
    displayNumber = displayNumber * 10 + 1;
    [self displayResult];
}

-(IBAction)clickNumber2Button
{
    displayNumber = displayNumber * 10 + 2;
    [self displayResult];
}

-(IBAction)clickNumber3Button
{
    displayNumber = displayNumber * 10 + 3;
    [self displayResult];
}

-(IBAction)clickNumber4Button
{
    displayNumber = displayNumber * 10 + 4;
    [self displayResult];
}

-(IBAction)clickNumber5Button
{
    displayNumber = displayNumber * 10 + 5;
    [self displayResult];
}

-(IBAction)clickNumber6Button
{
    displayNumber = displayNumber * 10 + 6;
    [self displayResult];
}

-(IBAction)clickNumber7Button
{
    displayNumber = displayNumber * 10 + 7;
    [self displayResult];
}

-(IBAction)clickNumber8Button
{
    displayNumber = displayNumber * 10 + 8;
    [self displayResult];
}

-(IBAction)clickNumber9Button
{
    displayNumber = displayNumber * 10 + 9;
    [self displayResult];
}

-(IBAction)clickNumber0Button
{
    displayNumber = displayNumber * 10 + 0;
    [self displayResult];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    displayNumber = 0;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
