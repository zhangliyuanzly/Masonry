//
//  ViewController.h
//  折叠单元格
//
//  Created by 张立远 on 2020/9/11.
//  Copyright © 2020 张立远. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource
>

@property (nonatomic, strong) UITableView *tableView;//设置画布大小

@property (nonatomic, copy) NSArray *name1Array;

@property (nonatomic, assign) BOOL isOpen;//折叠单元格是否已经展开


@end

