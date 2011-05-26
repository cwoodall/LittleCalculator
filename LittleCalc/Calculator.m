//
//  Calculator.m
//  LittleCalc
//
//  Created by Christopher Woodall on 5/25/11.
//  Copyright 2011 Boston University. All rights reserved.
//

#import "Calculator.h"


@implementation Calculator

@synthesize accumulator;
@synthesize memory;

- (void)clear
{
    accumulator = 0;
}

-(void)clearMemory
{
    memory = 0;
}
-(void)clearAll
{
    memory = 0;
    accumulator = 0;
}
- (void)toMemory
{
    memory = accumulator;
}
- (void)add:(double)value
{
    accumulator += value;
}
- (void)subtract:(double)value 
{
    accumulator -= value;
}
- (void)multiply:(double)value
{
    accumulator *= value;
}
- (void)divide:(double)value
{
    accumulator /= value;
}

// Memory based functions
- (void)addFromMemory
{
    accumulator += memory;
}
- (void)subtractFromMemory
{
    accumulator = memory - accumulator;
}
- (void)multiplyFromMemory
{
    accumulator *= memory;
}
- (void)divideFromMemory
{
    accumulator = memory/accumulator;
}

@end
