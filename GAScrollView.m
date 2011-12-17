//
//  GAScrollView.m
//  Car
//
//  Created by apple on 11-12-17.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "GAScrollView.h"

@implementation GAScrollView

@synthesize GADelegate = GADelegate_;

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self.superview touchesBegan:touches withEvent:event];
    if ([GADelegate_ respondsToSelector:@selector(GAScrollView:touchBegin:withEvent:)]) {
        [GADelegate_ GAScrollView:self touchBegin:touches withEvent:event];
    }
}

@end
