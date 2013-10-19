//
//  HeadlinesTableView.m
//  Headlines
//
//  Created by xyooyy on 13-10-18.
//  Copyright (c) 2013年 lunajin. All rights reserved.
//

#import "HeadlinesTableView.h"

@implementation HeadlinesTableView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
-(void)createCellImageView{
    
}

-(void)createImageView:(UITableViewCell *)cell :(NSInteger)indexSection{
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(235, 10, 70, 60)];
    if (indexSection == 0) 
        imageView.image = [UIImage imageNamed:@"first.png"];
    
    if (indexSection == 1) 
        imageView.image = [UIImage imageNamed:@"second.png"];
    
    if (indexSection == 3) 
        imageView.image = [UIImage imageNamed:@"third.png"];
    
    if (indexSection == 4) 
        imageView.image = [UIImage imageNamed:@"fourth.png"];
    
    [cell addSubview:imageView];
}

-(void)createRecommedButton :(UITableViewCell *)cell{
    
    UIButton *recommedButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [recommedButton setFrame: CGRectMake(20, 57, 40, 15)];
    [recommedButton setBackgroundColor: [UIColor redColor]];
    [recommedButton setTitle:@"推荐" forState:UIControlStateNormal];
    recommedButton.titleLabel.font =[UIFont boldSystemFontOfSize:12];
    [recommedButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [cell addSubview:recommedButton];
}


-(void)createHeadlinesTableView :(UITableViewController *)headlinesViewController{
    
    UITableView *headlinesTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 480) style:UITableViewStyleGrouped];
    headlinesTableView.dataSource = headlinesViewController;
    headlinesTableView.delegate = headlinesViewController;
    [headlinesViewController.view addSubview:headlinesTableView];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
