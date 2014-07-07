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
    
    NSMutableArray *data;
    NSInteger expandedRowIndex;
}

@end
