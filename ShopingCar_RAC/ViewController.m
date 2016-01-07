//
//  ViewController.m
//  ShopingCar_RAC
//
//  Created by xian on 16/1/7.
//  Copyright © 2016年 xian. All rights reserved.
//

#import "ViewController.h"
#import "ShoppingCarCell.h"
#import "ReactiveCocoa/ReactiveCocoa.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ShoppingCarCell *cell = [tableView dequeueReusableCellWithIdentifier:@"shoppingCar_Cell"];
    
    [cell.addButton rac_signalForControlEvents:UIControlEventTouchUpInside];
    [cell.subButton rac_signalForControlEvents:UIControlEventTouchUpInside];
    RACSignal *textFieldSignal = cell.numTextField.rac_textSignal;
    return cell;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
