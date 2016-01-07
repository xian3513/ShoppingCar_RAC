//
//  ShoppingCarCell.h
//  ShopingCar_RAC
//
//  Created by xian on 16/1/7.
//  Copyright © 2016年 xian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShoppingCarCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *subButton;
@property (weak, nonatomic) IBOutlet UITextField *numTextField;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIImageView *contentImgView;

@end
