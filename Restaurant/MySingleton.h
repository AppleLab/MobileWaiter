//
//  MySingleton.h
//  Restaurant
//
//  Created by Марсель Хамидуллин on 07.07.14.
//  Copyright (c) 2014 Марсель Хамидуллин. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject {

    NSMutableArray *count;
    NSMutableArray *data;
    NSMutableArray *descriptionFood;
    NSMutableArray *fotoFood;
    NSMutableArray *priceList;
}

@property NSMutableArray *count;
@property NSMutableArray *data;
@property NSMutableArray *descriptionFood;
@property NSMutableArray *fotoFood;
@property NSMutableArray *priceList;

+ (MySingleton *)sharedInstance;

@end

