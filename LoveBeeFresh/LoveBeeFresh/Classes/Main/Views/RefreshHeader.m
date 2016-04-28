//
//  RefreshHeader.m
//  LoveBeeFresh
//
//  Created by linjohn on 4/16/16.
//  Copyright © 2016 linjohn. All rights reserved.
//

#import "RefreshHeader.h"

@implementation RefreshHeader 


- (void)prepare {

    [super prepare];
    
    self.stateLabel.hidden = NO;
    self.lastUpdatedTimeLabel.hidden = YES;
    
    [self setImages:@[[UIImage imageNamed:@"v2_pullRefresh1"]] forState:MJRefreshStateIdle];
    [self setImages:@[[UIImage imageNamed:@"v2_pullRefresh2"]] forState:MJRefreshStatePulling];
    [self setImages:@[[UIImage imageNamed:@"v2_pullRefresh1"],[UIImage imageNamed:@"v2_pullRefresh2"]] forState:MJRefreshStateRefreshing];
    
    [self setTitle:@"下拉刷新" forState:MJRefreshStateIdle];
    [self setTitle:@"松开开始刷新" forState:MJRefreshStatePulling];
    [self setTitle:@"正在刷新" forState:MJRefreshStateRefreshing];
}


@end
