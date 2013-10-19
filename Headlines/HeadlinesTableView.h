//
//  HeadlinesTableView.h
//  Headlines
//
//  Created by xyooyy on 13-10-18.
//  Copyright (c) 2013年 lunajin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HealinesViewController.h"

@interface HeadlinesTableView : UIView


-(void)createHeadlinesTableView :(HealinesViewController *)headlinesViewController;
-(void)createCellStyleShow:(UITableViewCell *)cell :(NSInteger)indexSection;
@end
