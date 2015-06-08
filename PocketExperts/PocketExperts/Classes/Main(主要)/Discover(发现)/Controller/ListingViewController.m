//
//  ListingViewController.m
//  TXmap
//
//  Created by 扶摇直上 on 15/6/3.
//  Copyright (c) 2015年 扶摇直上. All rights reserved.
//

#import "ListingViewController.h"
#import "ListingHeadView.h"
#import "ListingCell.h"
#define Width [[UIScreen mainScreen] bounds].size.width

@interface ListingViewController ()
@property(nonatomic,strong)ListingHeadView * listingHeadView;
@end

@implementation ListingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"清单";
    self.view.backgroundColor = [UIColor cyanColor];
    [self initWithTableView];
}

- (void)initWithTableView
{
    self.myTableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] bounds] style:UITableViewStylePlain];
    _myTableView.delegate = self;
    _myTableView.dataSource = self;
    [self.view addSubview:_myTableView];
    self.listingHeadView = [[ListingHeadView alloc] initWithFrame:CGRectMake(0, 0, Width, 85)];
    _myTableView.tableHeaderView = _listingHeadView;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ListingCell * cell = [tableView dequeueReusableCellWithIdentifier:@"listing"];
    if (!cell) {
        cell = [[ListingCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"listing"];
    }
    cell.numberLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row+1];
    [cell.changeButton addTarget:self action:@selector(didClickChangeProfessor:) forControlEvents:UIControlEventTouchUpInside];
//    NSArray * arr = cell.contentView.subviews;
//    NSLog(@"%@",arr);
    return cell;
}

- (void)didClickChangeProfessor:(UIButton *)button
{
    NSLog(@"换专家");
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 360;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
