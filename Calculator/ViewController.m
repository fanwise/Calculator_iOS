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

@implementation ViewController {
    long displayNumber;
    long firstOperationNumber;
    long secondOperationNumber;
    enum operation currentOperation;
    enum inputPosition currentInputPosition;
}

@synthesize display;

-(IBAction)clickNumberButton:(UIButton *)sender {
    if(currentInputPosition == equalChar) {
        currentInputPosition = firstNumber;
        displayNumber = 0;
        currentOperation = none;
        secondOperationNumber = 0;
    }else if(currentInputPosition == operationChar) {
        currentInputPosition = secondNumber;
        displayNumber = 0;
    }
    displayNumber = displayNumber * 10 + sender.tag;
    display.text = [NSString stringWithFormat:@"%ld", displayNumber];
}

-(IBAction)clickACButton {
    currentInputPosition = firstNumber;
    displayNumber =  0;
    currentOperation = none;
    display.text = [NSString stringWithFormat:@"%ld", displayNumber];
}

-(IBAction)clickPosNegButton {
    displayNumber =  displayNumber * -1;
    display.text = [NSString stringWithFormat:@"%ld", displayNumber];
}

-(IBAction)clickOperationButton:(UIButton *)sender {
    if(currentInputPosition == secondNumber) {
        [self clickEqualButton];
    }
    currentOperation = (int)sender.tag;
    firstOperationNumber = displayNumber;
    currentInputPosition = operationChar;

}

-(void)doPlus {
    displayNumber = firstOperationNumber + secondOperationNumber;
    display.text = [NSString stringWithFormat:@"%ld", displayNumber];
}

-(void)doMinus {
    displayNumber = firstOperationNumber - secondOperationNumber;
    display.text = [NSString stringWithFormat:@"%ld", displayNumber];
}

-(void)doMultiply {
    displayNumber = firstOperationNumber * secondOperationNumber;
    display.text = [NSString stringWithFormat:@"%ld", displayNumber];
}

-(void)doDivide {
    if(secondOperationNumber != 0)
    {
        displayNumber = firstOperationNumber / secondOperationNumber;
        display.text = [NSString stringWithFormat:@"%ld", displayNumber];
    }else
        display.text = @"Err: can't divide 0";
}

-(IBAction)clickEqualButton {
    if(currentInputPosition == secondNumber) {
        secondOperationNumber = displayNumber;
    }else if(currentInputPosition == equalChar) {
        firstOperationNumber = displayNumber;
    }else if(currentInputPosition == operationChar) {
        secondOperationNumber = displayNumber;
    }
    switch (currentOperation) {
        case plus:
            [self doPlus];
            break;
        case minus:
            [self doMinus];
            break;
        case multiply:
            [self doMultiply];
            break;
        case divide:
            [self doDivide];
            break;
        default:
            break;
    }
    currentInputPosition = equalChar;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    displayNumber = 0;
    currentInputPosition = firstNumber;
    currentOperation = none;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
