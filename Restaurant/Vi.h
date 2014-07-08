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
//
//@property NSMutableArray *dataCart;
//@property NSMutableArray * descriptionFoodCart;
//@property NSMutableArray * fotoFoodCart;
//@property NSMutableArray * priceListCart;


@property (weak, nonatomic) IBOutlet UILabel *sumOfOrder;
- (IBAction)delete:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
