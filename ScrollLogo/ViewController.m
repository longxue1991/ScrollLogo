//
//  ViewController.m
//  ScrollLogo
//
//  Created by BBbao App Developer on 6/17/15.
//  Copyright (c) 2015 BBbao App Developer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/2 - 225, CGRectGetWidth(self.view.frame), 25)];
    [headerLabel setBackgroundColor:[UIColor blueColor]];
    [headerLabel setAlpha:0.5];
    [headerLabel setTextColor:[UIColor colorWithRed:172.0/255.0 green:74.0/255.0 blue:93.0/255.0 alpha:1.0]];
    [headerLabel setText:@"庄周梦蝶"];
    [headerLabel setFont:[UIFont systemFontOfSize:18]];
    [self.view addSubview:headerLabel];
    
    UITableView *myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/2 - 100, 100, self.view.frame.size.height-100)];
    [myTableView.layer setAnchorPoint:CGPointMake(0.0, 0.0)];
    myTableView.transform = CGAffineTransformMakeRotation(-M_PI_2);
    myTableView.dataSource = self;
    myTableView.delegate  = self;
    myTableView.scrollEnabled = YES;
    myTableView.userInteractionEnabled = YES;
//    myTableView.showsHorizontalScrollIndicator = NO;
    myTableView.showsVerticalScrollIndicator = NO;
    myTableView.frame = CGRectMake(0, self.view.frame.size.height/2 - 100, self.view.frame.size.width, 100);
    myTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [myTableView setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:myTableView];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 15;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.selectionStyle = UITableViewCellSelectionStyleBlue;
        self.myLogo = [[LogoView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 100)];
        self.myLogo.tag = 101;
//        self.myLogo.transform = CGAffineTransformMakeRotation(M_PI/2);
//        [cell addSubview:self.myLogo];
        [cell.contentView addSubview:self.myLogo];
    }
    cell.contentView.transform = CGAffineTransformMakeRotation(M_PI_2);
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

@end
