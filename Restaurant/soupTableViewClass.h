//
//  soupTableViewClass.h
//  Restaurant
//
//  Created by Марсель Хамидуллин on 05.07.14.
//  Copyright (c) 2014 Марсель Хамидуллин. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface soupTableViewClass : UITableViewController 
{
    NSInteger expandedRowIndex;
}
@property NSMutableArray *data;

-(IBAction)MyMethod:(id)sender;

@end
