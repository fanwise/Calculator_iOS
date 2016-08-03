//
//  ViewController.h
//  Calculator
//
//  Created by Wei
//Fan on 8/2/16.
//  Copyright © 2016 Wei
//Fan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

enum operation {none = 10, plus, minus, multiply, divide};

enum inputPosition {firstNumber = 1, operationChar, secondNumber, equalChar};

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

-(void)doPlus;

-(void)doMinus;

-(void)doMultiply;

-(void)doDivide;

-(IBAction)clickNumberButton:(UIButton *)sender;

-(IBAction)clickOperationButton:(UIButton *)sender;

-(IBAction)clickACButton;

-(IBAction)clickPosNegButton;

-(IBAction)clickEqualButton;

//-(IBAction)clickpercentageButton;
//
//-(IBAction)clickDotButton;

@end





