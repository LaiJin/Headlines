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
-(void)createCommentLabel :(UITableViewCell *)cell :(NSInteger)indexSection{
    
    NSMutableArray *commentNumbers = [NSMutableArray arrayWithObjects:@"2873",@"545",@"5732",@"519",@"88888",nil];
    UILabel  *commentLabel = [[UILabel alloc]init];
    if (indexSection%2 == 0) 
        [commentLabel  setFrame:CGRectMake(90, 56, 50, 18)];
    else
        [commentLabel  setFrame:CGRectMake(45, 56, 50, 18)];
    [commentLabel  setTextColor:[UIColor grayColor]];
    [commentLabel  setBackgroundColor:[UIColor clearColor]];
    [commentLabel setText:[commentNumbers objectAtIndex:indexSection]];
    [cell addSubview:commentLabel];
}
-(void)createCommentButton:(UITableViewCell *)cell :(NSInteger)indexSection{
    
    UIButton *commentButton = [UIButton buttonWithType:UIButtonTypeCustom];
    if (indexSection%2 == 0) 
        [commentButton setFrame: CGRectMake(56, 45, 40, 40)];
    else
        [commentButton setFrame:CGRectMake(10, 45, 40, 40)];
    [commentButton setBackgroundImage:[UIImage imageNamed:@"Comment.png"] forState:UIControlStateNormal];
    [cell addSubview:commentButton];
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

-(void)createRecommedButton :(UITableViewCell *)cell :(NSInteger)indexSection{
    
    if (indexSection%2 == 0) {
        
        UIButton *recommedButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [recommedButton setFrame: CGRectMake(20, 57, 40, 15)];
        [recommedButton setBackgroundColor: [UIColor redColor]];
        [recommedButton setTitle:@"推荐" forState:UIControlStateNormal];
        recommedButton.titleLabel.font =[UIFont boldSystemFontOfSize:12];
        [recommedButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [cell addSubview:recommedButton];
    }

}
-(void)createCellStyleShow:(UITableViewCell *)cell :(NSInteger)indexSection{
    
    [self createRecommedButton:cell :indexSection];
    [self createImageView:cell :indexSection];
    [self createCommentButton:cell :indexSection];
    [self createCommentLabel:cell:indexSection];
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
