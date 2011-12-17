//
//  GAScrollView.h
//  Car
//
//  Created by apple on 11-12-17.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GAScrollViewDelegate;

@interface GAScrollView : UIScrollView 
{
    id<GAScrollViewDelegate> GADelegate_;
}

@property (nonatomic, assign) id<GAScrollViewDelegate> GADelegate;

@end


@protocol GAScrollViewDelegate <UIScrollViewDelegate>

@optional
- (void) GAScrollView:(GAScrollView *)scroll touchBegin:(NSSet *)touches withEvent:(UIEvent *)event;

@end