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

#define PLUS       1
#define MINUS      2
#define MULTIPLY   3
#define DIVIDE     4
#define NONE       0

@interface ViewController ()

@end

@implementation ViewController
{
    long displayNumber;
    long firstOperationNumber;
    long secondOperationNumber;
    int numberIndex;
    int operation;
    NSString *displayString;
}

@synthesize display;

-(void) displayInputNumber
{
//    if (numberIndex == 0)
//    {
//        numberIndex = 1;
//    }else
    if(numberIndex == 1 && operation > 0)
    {
        numberIndex = 2;
    }
    displayString = [NSString stringWithFormat:@"%ld", displayNumber];
    display.text = displayString;
}

-(IBAction)clickNumber1Button
{
    displayNumber = displayNumber * 10 + 1;
    [self displayInputNumber];
}

-(IBAction)clickNumber2Button
{
    displayNumber = displayNumber * 10 + 2;
    [self displayInputNumber];
}

-(IBAction)clickNumber3Button
{
    displayNumber = displayNumber * 10 + 3;
    [self displayInputNumber];
}

-(IBAction)clickNumber4Button
{
    displayNumber = displayNumber * 10 + 4;
    [self displayInputNumber];
}

-(IBAction)clickNumber5Button
{
    displayNumber = displayNumber * 10 + 5;
    [self displayInputNumber];
}

-(IBAction)clickNumber6Button
{
    displayNumber = displayNumber * 10 + 6;
    [self displayInputNumber];
}

-(IBAction)clickNumber7Button
{
    displayNumber = displayNumber * 10 + 7;
    [self displayInputNumber];
}

-(IBAction)clickNumber8Button
{
    displayNumber = displayNumber * 10 + 8;
    [self displayInputNumber];
}

-(IBAction)clickNumber9Button
{
    displayNumber = displayNumber * 10 + 9;
    [self displayInputNumber];
}

-(IBAction)clickNumber0Button
{
    displayNumber = displayNumber * 10 + 0;
    [self displayInputNumber];
}

-(IBAction)clickACButton
{
    displayNumber =  0;
    [self displayInputNumber];
}

-(IBAction)clickPosNegButton
{
    displayNumber =  displayNumber * -1;
    [self displayInputNumber];
}

-(IBAction)clickPlusButton
{
    if(numberIndex == 2)
        [self clickEqualButton];
    else
        display.text = @"+";
    numberIndex = 1;
    firstOperationNumber = displayNumber;
    displayNumber = 0;
    operation = PLUS;
    
}

-(void)doPlus
{
    if (numberIndex == 2)
    {
        secondOperationNumber = displayNumber;
        
    }else if(numberIndex == 0)
    {
        firstOperationNumber = displayNumber;
    }
    displayNumber = firstOperationNumber + secondOperationNumber;
    displayString = [NSString stringWithFormat:@"%ld", displayNumber];
    display.text = displayString;
}

-(IBAction)clickMinusButton
{
    if(numberIndex == 2)
        [self clickEqualButton];
    else
        display.text = @"-";
    numberIndex = 1;
    firstOperationNumber = displayNumber;
    displayNumber = 0;
    operation = MINUS;
}

-(void)doMinus
{
    if (numberIndex == 2)
    {
        secondOperationNumber = displayNumber;
        
    }else if(numberIndex == 0)
    {
        firstOperationNumber = displayNumber;
    }
    displayNumber = firstOperationNumber - secondOperationNumber;
    displayString = [NSString stringWithFormat:@"%ld", displayNumber];
    display.text = displayString;
}

-(IBAction)clickMulitplyButton
{
    if(numberIndex == 2)
        [self clickEqualButton];
    else
        display.text = @"*";
    numberIndex = 1;
    firstOperationNumber = displayNumber;
    displayNumber = 0;
    operation = MULTIPLY;
}

-(void)doMultiply
{
    if (numberIndex == 2)
    {
        secondOperationNumber = displayNumber;
        
    }else if(numberIndex == 0)
    {
        firstOperationNumber = displayNumber;
    }
    displayNumber = firstOperationNumber * secondOperationNumber;
    displayString = [NSString stringWithFormat:@"%ld", displayNumber];
    display.text = displayString;
}

-(IBAction)clickDivideButton
{
    if(numberIndex == 2)
        [self clickEqualButton];
    else
        display.text = @"/";
    numberIndex = 1;
    firstOperationNumber = displayNumber;
    displayNumber = 0;
    operation = DIVIDE;
}

-(void)doDivide
{
    if (numberIndex == 2)
    {
        secondOperationNumber = displayNumber;
        
    }else if(numberIndex == 0)
    {
        firstOperationNumber = displayNumber;
    }
    if(secondOperationNumber != 0)
    {
        displayNumber = firstOperationNumber / secondOperationNumber;
        displayString = [NSString stringWithFormat:@"%ld", displayNumber];
        display.text = displayString;
    }else
        display.text = @"Err: can't divide 0";
}

-(IBAction)clickEqualButton
{
    switch (operation) {
        case PLUS:
            [self doPlus];
            break;
        case MINUS:
            [self doMinus];
            break;
        case MULTIPLY:
            [self doMultiply];
            break;
        case DIVIDE:
            [self doDivide];
            break;
        default:
            break;
    }
    numberIndex = 0;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    displayNumber = 0;
    numberIndex = 0;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
