//
//  ViewController.m
//  折叠单元格
//
//  Created by 张立远 on 2020/9/11.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414,700) style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    _name1Array = [[NSArray alloc] init];
    _name1Array = @[@"西安", @"宝鸡", @"汉中", @"铜川", @"延安", @"商洛"];

    
    _isOpen = NO;
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (_isOpen == YES) {
        return 6;
    }else {
        return 0;
    }
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
            UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        if (!cell) {
            cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        }
        cell.textLabel.text = _name1Array[indexPath.row];
        return cell;


}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 60;
}



- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *view1 = [[UIView alloc] init];
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;//btn文字居左显示

    btn1.frame = CGRectMake(0, 0, self.view.frame.size.width, 50);
    btn1.backgroundColor = [UIColor redColor];
    [btn1 setTitle:@"   陕西" forState:UIControlStateNormal];
    btn1.titleLabel.font = [UIFont systemFontOfSize:18];
    btn1.tintColor = [UIColor blackColor];
    [btn1 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];

    [view1 addSubview:btn1];

    return view1;
}

- (void)pressBtn:(UIButton *)btn {
    if (_isOpen == NO) {
        _isOpen = YES;
    }else {
        _isOpen = NO;
    }
    [_tableView reloadData];
}



@end
