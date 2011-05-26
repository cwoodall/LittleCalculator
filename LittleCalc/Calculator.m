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

// Perform operation based on input string (operation)
- operationFromString:(NSString *) operation
{
    // Performs action between accumulator and memory
    
    // Check for the existence of memory 
    // NOTE: Possibly replace with a try
    if (memory) {
        if ([operation isEqualToString:@"+"]) {
            [self addFromMemory];
        } else if ([operation isEqualToString:@"-"]) {
            [self subtractFromMemory];
        } else if ([operation isEqualToString:@"*"]) {
            [self multiplyFromMemory];
        } else if ([operation isEqualToString:@"/"]) {
            [self divideFromMemory];
        } else if ([operation isEqualToString:@"="]) {
            [self clearAll];
        }
    }
    return self;
}

- operationFromString:(NSString *)operation withValue:(double)val
{
    if ([operation isEqualToString:@"+"]) {
        [self add:val];
    } else if ([operation isEqualToString:@"-"]) {
        [self subtract:val];
    } else if ([operation isEqualToString:@"*"]) {
        [self multiply:val];
    } else if ([operation isEqualToString:@"/"]) {
        [self divide:val];
    } else if ([operation isEqualToString:@"="]) {
        [self clearAll];
    }
    return self;
}

@end
