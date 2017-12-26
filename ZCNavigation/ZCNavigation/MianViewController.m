//
//  MianViewController.m
//  ZCNavigation
//
//  Created by 张智超MAC on 2017/12/26.
//  Copyright © 2017年 张智超MAC. All rights reserved.
//

#import "MianViewController.h"
#import "UINavigationBar+ZCNavigationBar.h"
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
@interface MianViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation MianViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"111";
    [self.navigationController.navigationBar setNavsetBackgroundColor:RGBA(4,255,255,0) alpha:0];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    // Do any additional setup after loading the view.
}
#pragma mark UITableViewDatasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = @"text";
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 65;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    CGPoint offset = scrollView.contentOffset;
    CGFloat alpha = 0.0;
    if  ( offset.y  > 50) {
        alpha =  (offset.y - 50)/(200 - 50);
    }
  
    if (alpha <=1.0) {
        [self.navigationController.navigationBar setNavsetBackgroundColor:RGBA(4,255,255,alpha) alpha:alpha];
    }
    
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
