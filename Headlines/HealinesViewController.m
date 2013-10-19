//
//  HealinesViewController.m
//  Headlines
//
//  Created by xyooyy on 13-10-18.
//  Copyright (c) 2013年 lunajin. All rights reserved.
//

#import "HealinesViewController.h"
#import "HeadlinesTableView.h"

@interface HealinesViewController ()

@end

@implementation HealinesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)AssignmentToLabelTestArray{
    
    NSString *firstTest  = @"社科院郑秉文:延迟退休是\n早晚的事";
    NSString *secondTest = @"武汉4千万元套牌豪车若无\n人认领将被销毁(图)";
    NSString *thirdTest  = @"河北官员:刁难市民的警察那张脸让人不寒而栗";
    NSString *fourthTest = @"今日网言午间版:教育赢在\n起跑线未必到达到终点";
    NSString *fifthTest  = @"清华教授提议:外来人口想\n要落户北京应考试";
    labelTextArray = [[NSMutableArray alloc]initWithObjects:firstTest,secondTest,thirdTest,fourthTest,fifthTest, nil];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"头条";
    HeadlinesTableView *headlinesTableView = [[HeadlinesTableView alloc]init];
    [headlinesTableView createHeadlinesTableView:self];
    [self AssignmentToLabelTestArray];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return [labelTextArray count];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellTableIdentifier = @"cellTableIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellTableIdentifier];
    }
    cell.textLabel.numberOfLines = 2;
    cell.textLabel.font =[UIFont boldSystemFontOfSize:16 ];
    cell.textLabel.text = [labelTextArray objectAtIndex:indexPath.section];
    cell.selectionStyle =UITableViewCellSelectionStyleNone;
    HeadlinesTableView *cellHeadlinesTableView = [[HeadlinesTableView alloc]init];
    [cellHeadlinesTableView createCellStyleShow:cell :indexPath.section];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 5;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 73;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}



@end
