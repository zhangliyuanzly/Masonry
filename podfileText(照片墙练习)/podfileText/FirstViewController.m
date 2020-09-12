//
//  FirstViewController.m
//  podfileText
//
//  Created by 张立远 on 2020/9/9.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "FirstViewController.h"
#import "Masonry.h"
#import "FirstTableViewCell.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _TableView = [[UITableView alloc] init];
    
    _TableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 1.5 * self.view.frame.size.height) style:UITableViewStylePlain];
    
    _TableView.delegate = self;
    _TableView.dataSource = self;
    [self.view addSubview:_TableView];
    
//    [_TableView mas_makeConstraints:^(MASConstraintMaker *make) {
//         make.top.equalTo(self.view).offset(70);
//         make.width.equalTo(@([UIScreen mainScreen].bounds.size.width));
//         make.height.equalTo(@([UIScreen mainScreen].bounds.size.height));
//     }];
    
//    self.tableView.delegate = self;
//    self.tableView.dataSource =self;
    
    [self.tableView registerClass:[FirstTableViewCell class] forCellReuseIdentifier:@"111"];
    

    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"照片墙";
    
    
//    UIView *blueView = [[UIView alloc] init];
//    blueView.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:blueView];
    
    
//    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self.view).with.offset(10);
//        make.top.equalTo(self.view).with.offset(10);
//        make.width.equalTo(self.view).multipliedBy(0.3);//总视图的0.3
//        make.height.equalTo(self.view).multipliedBy(0.5);//总视图的0.5
//    }];
    
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 180;
}

//消除小灰条
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
            FirstTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];

        [cell.firstImage setImage:[UIImage imageNamed:@"1 copy.jpg"]];
        
        [cell.secondImage setImage:[UIImage imageNamed:@"2 copy.jpg"]];
        
        [cell.thirdImage setImage:[UIImage imageNamed:@"3 copy.jpg"]];

        
        return cell;
    }else if(indexPath.row == 1) {
            FirstTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];

        [cell.firstImage setImage:[UIImage imageNamed:@"4.jpg"]];
        
        [cell.secondImage setImage:[UIImage imageNamed:@"5.jpg"]];
        
        [cell.thirdImage setImage:[UIImage imageNamed:@"6.jpg"]];

        
        return cell;
    }else if(indexPath.row == 2) {
            FirstTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];

        [cell.firstImage setImage:[UIImage imageNamed:@"7.jpg"]];
        
        [cell.secondImage setImage:[UIImage imageNamed:@"8.jpg"]];
        
        [cell.thirdImage setImage:[UIImage imageNamed:@"9.jpg"]];

        
        return cell;
    }else if(indexPath.row == 3) {
            FirstTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];

        [cell.firstImage setImage:[UIImage imageNamed:@"10.jpg"]];
        
        [cell.secondImage setImage:[UIImage imageNamed:@"11.jpg"]];
        
        [cell.thirdImage setImage:[UIImage imageNamed:@"12.jpg"]];

        
        return cell;
    }else {
            FirstTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];

        [cell.firstImage setImage:[UIImage imageNamed:@"13.jpg"]];
        
        [cell.secondImage setImage:[UIImage imageNamed:@"14.jpg"]];
        
        [cell.thirdImage setImage:[UIImage imageNamed:@"15.jpg"]];

        
        return cell;
    }
    

}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
