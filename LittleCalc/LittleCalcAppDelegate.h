//
//  LittleCalcAppDelegate.h
//  LittleCalc
//
//  Created by Christopher Woodall on 5/25/11.
//  Copyright 2011 Boston University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LittleCalculatorController.h"

@class LittleCalculatorController;

@interface LittleCalcAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) LittleCalculatorController *littleCalcController;

@end
