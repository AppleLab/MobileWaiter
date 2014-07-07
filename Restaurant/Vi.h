//
//  Vi.h
//  Restaurant
//
//  Created by itisioslab on 07.07.14.
//  Copyright (c) 2014 Марсель Хамидуллин. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Vi : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    
    NSInteger expandedRowIndex;
    
}
@property NSInteger * num;
@property NSMutableArray *data;
@property NSArray * descriptionFoodCart;
@property NSArray * fotoFoodCart;
@property NSArray * priceListCart;

@property (weak, nonatomic) IBOutlet UITableView *cartTable;
@property (weak, nonatomic) IBOutlet UILabel *sumOfOrder;
- (IBAction)finally:(id)sender;
- (IBAction)delete:(id)sender;

@end
