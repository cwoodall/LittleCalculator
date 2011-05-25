//
//  LittleCalculatorController.h
//  LittleCalc
//
//  Created by Christopher Woodall on 5/25/11.
//  Copyright 2011 Boston University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface LittleCalculatorController : UIViewController {
    
    UIButton *button1;
    UIButton *button2;
    UIButton *button3;
    UIButton *button4;
    UIButton *button5;
    UIButton *button6;
    UIButton *button7;
    UIButton *button8;
    UIButton *button9;
    UIButton *button0;
    UIButton *buttonAdd;
    UIButton *buttonMult;
    UIButton *buttonSub;
    UIButton *buttonDiv;
    UIButton *buttonEquals;
    UILabel *resultsLabel;
    
    Calculator *littleCalc;
}

@property (nonatomic, retain) IBOutlet UIButton *button1;
@property (nonatomic, retain) IBOutlet UIButton *button2;
@property (nonatomic, retain) IBOutlet UIButton *button3;
@property (nonatomic, retain) IBOutlet UIButton *button4;
@property (nonatomic, retain) IBOutlet UIButton *button5;
@property (nonatomic, retain) IBOutlet UIButton *button6;
@property (nonatomic, retain) IBOutlet UIButton *button7;
@property (nonatomic, retain) IBOutlet UIButton *button8;
@property (nonatomic, retain) IBOutlet UIButton *button9;
@property (nonatomic, retain) IBOutlet UIButton *button0;
@property (nonatomic, retain) IBOutlet UIButton *buttonAdd;
@property (nonatomic, retain) IBOutlet UIButton *buttonMult;
@property (nonatomic, retain) IBOutlet UIButton *buttonSub;
@property (nonatomic, retain) IBOutlet UIButton *buttonDiv;
@property (nonatomic, retain) IBOutlet UIButton *buttonEquals;
@property (nonatomic, retain) IBOutlet UILabel *resultsLabel;
@property (nonatomic, retain) Calculator *littleCalc;

- (IBAction)buttonClicked:(id)sender;

@end
