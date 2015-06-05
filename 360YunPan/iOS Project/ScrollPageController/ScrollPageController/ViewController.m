//
//  ViewController.m
//  ScrollPageController
//
//  Created by chendd on 15/6/3.
//  Copyright (c) 2015年 icfcc. All rights reserved.
//

#import "ViewController.h"
#import "ScrollPageView.h"
@interface ViewController ()<ScrollPageViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ScrollPageView * scrollPageView=[[ScrollPageView alloc]initWithFrame:CGRectMake(0, 64, 320, 320)];
    scrollPageView.dataSource=self;
    [self.view addSubview:scrollPageView];
    [scrollPageView setPageIndicatorImage:[UIImage imageNamed:@"appleDot"] andCurrentPageIndicatorImage:[UIImage imageNamed:@"currentAppleDot"]];
    [scrollPageView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark ScrollPageViewDataSource
-(NSInteger)numberOfViewsInScrollPageView:(ScrollPageView *)scrollPageView{
    return 2;
}
-(UIView *)scrollPageView:(ScrollPageView *)scrollPageView viewForIndex:(NSInteger)index{
    UIView * v=[[UIView alloc]initWithFrame:CGRectMake(0,0,scrollPageView.frame.size.width,scrollPageView.frame.size.height)];
    if (index==0) {
        v.backgroundColor=[UIColor greenColor];
    }else{
        v.backgroundColor=[UIColor blueColor];
    }
    return v;
}
@end