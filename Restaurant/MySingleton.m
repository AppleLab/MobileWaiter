//
//  MySingleton.m
//  Restaurant
//
//  Created by Марсель Хамидуллин on 07.07.14.
//  Copyright (c) 2014 Марсель Хамидуллин. All rights reserved.
//

#import "MySingleton.h"

static MySingleton *_sharedInstance;
@implementation MySingleton

@synthesize data;
@synthesize fotoFood;
@synthesize descriptionFood;
@synthesize priceList;

@synthesize dataCart;
@synthesize fotoFoodCart;
@synthesize descriptionFoodCart;
@synthesize priceListCart;

-(id)init
{
    self = [super init];
    data = [[NSMutableArray alloc]init];
    descriptionFood = [[NSMutableArray alloc]init];
    fotoFood = [[NSMutableArray alloc]init];
    priceList = [[NSMutableArray alloc]init];
    dataCart = [[NSMutableArray alloc]init];
    descriptionFoodCart = [[NSMutableArray alloc]init];
    fotoFoodCart = [[NSMutableArray alloc]init];
    priceListCart = [[NSMutableArray alloc]init];
    return self;
}

+(MySingleton *)sharedInstance
{
    @synchronized(_sharedInstance)
    {
        if(!_sharedInstance)
            _sharedInstance = [[MySingleton alloc]init];
        return _sharedInstance;
    }
}

//+(MySingleton *) sharedInstance {
//    static MySingleton *_sharedInstance = nil;
//    static dispatch_once_t onceToken;
//    
//    dispatch_once(&onceToken, ^{
//        if (_sharedInstance == nil){
//            _sharedInstance = [[super allocWithZone:NULL] init];
//        }
//    });
//    
//    return _sharedInstance;
//}
//
//+ (id)allocWithZone:(NSZone *)zone {
//    return [self sharedInstance];
//}
//
//- (id)copyWithZone:(NSZone *)zone {
//    return self;
//}



@end