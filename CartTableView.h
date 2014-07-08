//
//  CartTableView.h
//  Restaurant
//
//  Created by Марсель Хамидуллин on 07.07.14.
//  Copyright (c) 2014 Марсель Хамидуллин. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CartTableView : UITableViewController
{
    NSMutableArray *data;
    NSInteger expandedRowIndex;
}

@end
