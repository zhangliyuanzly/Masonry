//
//  FirstViewController.h
//  podfileText
//
//  Created by 张立远 on 2020/9/9.
//  Copyright © 2020 张立远. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirstViewController : UITableViewController
<
UITableViewDelegate,
UITableViewDataSource
>

@property (nonatomic, strong)UITableView *TableView;

@end

NS_ASSUME_NONNULL_END
