//
//  Calculator.h
//  LittleCalc
//
//  Created by Christopher Woodall on 5/25/11.
//  Copyright 2011 Boston University. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Calculator : NSObject {
    double accumulator;
    double memory;
}

@property double accumulator;
@property double memory;

// Initialize accumulator
- (void)clear; // Set the accumulator back to 0
- (void)clearMemory;
- (void)clearAll;
- (void)toMemory;

// Accumulator + value based functions
- (void)add:(double)value; // Add value to accumulator
- (void)subtract:(double)value; // Subtract value from accumulator
- (void)multiply:(double)value; // Multiply the accumulator by value
- (void)divide:(double)value; // Divide vale from the accumulator

// Memory based functions
- (void)addFromMemory;
- (void)subtractFromMemory;
- (void)multiplyFromMemory;
- (void)divideFromMemory;

@end
