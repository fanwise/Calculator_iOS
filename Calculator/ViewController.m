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

@implementation ViewController {
    long displayNumber;
    long firstOperationNumber;
    long secondOperationNumber;
    int numberIndex;
    int operation;
    NSString * displayString;
}

@synthesize display;

-(IBAction)clickNumberButton:(UIButton *)sender {
    displayNumber = displayNumber * 10 + sender.tag;
    display.text = [NSString stringWithFormat:@"%ld", displayNumber];
}

-(IBAction)clickACButton {
    displayNumber =  0;
    display.text = [NSString stringWithFormat:@"%ld", displayNumber];
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

-(void)doPlus {
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
