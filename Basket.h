//
//  Basket.h
//  Restaurant
//
//  Created by itisioslab on 05.07.14.
//  Copyright (c) 2014 Марсель Хамидуллин. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Basket : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *finallyButton;
@property (weak, nonatomic) IBOutlet UILabel *SumOfOrder;
@property (weak, nonatomic) IBOutlet UITableView *basketTable;
- (IBAction)delete:(id)sender; // удаление блюда из списка заказов

@end
