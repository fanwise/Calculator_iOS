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

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

-(void) displayInputNumber;

-(void) doPlus;

-(void) doMinus;

-(void) doMultiply;

-(void) doDivide;

-(IBAction)clickNumberButton:(UIButton *)sender;

-(IBAction)clickACButton;

-(IBAction)clickPosNegButton;

-(IBAction)clickpercentageButton;

-(IBAction)clickDivideButton;

-(IBAction)clickMulitplyButton;

-(IBAction)clickMinusButton;

-(IBAction)clickPlusButton;

-(IBAction)clickEqualButton;

-(IBAction)clickDotButton;

@end





