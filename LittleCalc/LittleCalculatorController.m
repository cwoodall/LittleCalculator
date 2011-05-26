//
//  LittleCalculatorController.m
//  LittleCalc
//
//  Created by Christopher Woodall on 5/25/11.
//  Copyright 2011 Boston University. All rights reserved.
//

#import "LittleCalculatorController.h"

@implementation LittleCalculatorController

@synthesize button1;
@synthesize button2;
@synthesize button3;
@synthesize button4;
@synthesize button5;
@synthesize button6;
@synthesize button7;
@synthesize button8;
@synthesize button9;
@synthesize button0;
@synthesize buttonAdd;
@synthesize buttonMult;
@synthesize buttonSub;
@synthesize buttonDiv;
@synthesize buttonEquals;
@synthesize resultsLabel;

- (IBAction)buttonClicked:(id)sender
{
    NSString *action = [[NSString alloc] initWithString:[[sender titleLabel] text]];
    if (([action doubleValue]) || ( [action isEqualToString:@"0"]))
    {
        if ([littleCalc accumulator] == 0) {
            [littleCalc setAccumulator:[action doubleValue]];
            [resultsLabel setText:[NSString stringWithFormat:@"%.2f", [littleCalc accumulator]]];
        } else {
            [littleCalc setAccumulator:[[NSString stringWithFormat:@"%.0f%@", [littleCalc accumulator], action] doubleValue]];
            [resultsLabel setText:[NSString stringWithFormat:@"%.2f", [littleCalc accumulator]]];
        }
    } else {
        if ([action isEqualToString:@"+"])
        {
            [littleCalc toMemory];
            [littleCalc clear];
            operation = @"+";
            [resultsLabel setText:[NSString stringWithFormat:@"%.2f", [littleCalc accumulator]]];
            NSLog(@"%f", [littleCalc memory]);
        } else if ([action isEqualToString:@"-"]) {
            [littleCalc toMemory];
            [littleCalc clear];
            operation = @"-";
            [resultsLabel setText:[NSString stringWithFormat:@"%.2f", [littleCalc accumulator]]];
            NSLog(@"%f", [littleCalc memory]);

        } else if ([action isEqualToString:@"*"]) {
            [littleCalc toMemory];
            [littleCalc clear];
            operation = @"*";
            [resultsLabel setText:[NSString stringWithFormat:@"%.2f", [littleCalc accumulator]]];
            NSLog(@"%f", [littleCalc memory]);
            
        } else if ([action isEqualToString:@"/"]) {
            [littleCalc toMemory];
            [littleCalc clear];
            operation = @"/";
            [resultsLabel setText:[NSString stringWithFormat:@"%.2f", [littleCalc accumulator]]];
            NSLog(@"%f", [littleCalc memory]);
        } else if ([action isEqualToString:@"="]) {
            if ([operation isEqualToString:@"+"]) {
                [littleCalc addFromMemory];
                [resultsLabel setText:[NSString stringWithFormat:@"%.2f", [littleCalc accumulator]]];
                [littleCalc clearAll];
                operation = @"";
            } else if ([operation isEqualToString:@"-"]) {
                [littleCalc subtractFromMemory];
                [resultsLabel setText:[NSString stringWithFormat:@"%.2f", [littleCalc accumulator]]];
                [littleCalc clearAll];
                operation = @"";
            } else if ([operation isEqualToString:@"*"]) {
                [littleCalc multiplyFromMemory];
                [resultsLabel setText:[NSString stringWithFormat:@"%.2f", [littleCalc accumulator]]];
                [littleCalc clearAll];
                operation = @"";
            } else if ([operation isEqualToString:@"/"]) {
                [littleCalc divideFromMemory];
                [resultsLabel setText:[NSString stringWithFormat:@"%.2f", [littleCalc accumulator]]];
                [littleCalc clearAll];
                operation = @"";
            } else {
                [littleCalc clearAll];
                operation = @"";
            }
        }
    }
    
    [action release];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        littleCalc = [[Calculator alloc] init];
        [littleCalc clear];
        
        operation = [[NSString alloc] initWithString:@""];
    }
    return self;
}

- (void)dealloc
{
    [button1 release];
    [button2 release];
    [button3 release];
    [button4 release];
    [button5 release];
    [button6 release];
    [button7 release];
    [button8 release];
    [button9 release];
    [button0 release];
    [buttonAdd release];
    [buttonMult release];
    [buttonSub release];
    [buttonDiv release];
    [buttonEquals release];
    [resultsLabel release];
    [littleCalc release];
    [operation release];
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setButton1:nil];
    [self setButton2:nil];
    [self setButton3:nil];
    [self setButton4:nil];
    [self setButton5:nil];
    [self setButton6:nil];
    [self setButton7:nil];
    [self setButton8:nil];
    [self setButton9:nil];
    [self setButton0:nil];
    [self setButtonAdd:nil];
    [self setButtonMult:nil];
    [self setButtonSub:nil];
    [self setButtonDiv:nil];
    [self setButtonEquals:nil];
    [self setResultsLabel:nil];
//    [self setLittleCalc:nil];
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
