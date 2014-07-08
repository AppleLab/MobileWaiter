//
//  MySingleton.h
//  Restaurant
//
//  Created by Марсель Хамидуллин on 07.07.14.
//  Copyright (c) 2014 Марсель Хамидуллин. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject {

    NSMutableArray *data;
    NSMutableArray *descriptionFood;
    NSMutableArray *fotoFood;
    NSMutableArray *priceList;
    NSMutableArray *dataCart;
    NSMutableArray *descriptionFoodCart;
    NSMutableArray *fotoFoodCart;
    NSMutableArray *priceListCart;
}

@property NSMutableArray *data;
@property NSMutableArray *descriptionFood;
@property NSMutableArray *fotoFood;
@property NSMutableArray *priceList;
@property NSMutableArray *dataCart;
@property NSMutableArray *descriptionFoodCart;
@property NSMutableArray *fotoFoodCart;
@property NSMutableArray *priceListCart;

+ (MySingleton *)sharedInstance;

@end

