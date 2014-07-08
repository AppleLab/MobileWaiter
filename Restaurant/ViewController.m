//
//  ViewController.m
//  Restaurant
//
//  Created by Марсель Хамидуллин on 05.07.14.
//  Copyright (c) 2014 Марсель Хамидуллин. All rights reserved.
//

#import "ViewController.h"
#import "soupTableViewClass.h"
#import "MySingleton.h"

@interface ViewController ()
{
}
- (IBAction)soupButton:(id)sender;
- (IBAction)salatButton:(id)sender;
- (IBAction)fishButton:(id)sender;
- (IBAction)meatButton:(id)sender;
- (IBAction)drinkButton:(id)sender;
- (IBAction)dessertButton:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (IBAction)soupButton:(id)sender {
    
    //NSLog(@"Нажата кнопка: %lu",(unsigned long)[self.buttons indexOfObject:sender]);
    [MySingleton sharedInstance].data = [NSMutableArray arrayWithObjects:@"Суп из креветок",@"ssss", nil];
    [MySingleton sharedInstance].descriptionFood = [NSMutableArray arrayWithObjects:@"Супчик вкусняшка из креветок",@"Свеколка, капустка, бульенчик с мясом, кароч бери", nil];
    [MySingleton sharedInstance].fotoFood = [NSMutableArray arrayWithObjects:@"perv-26.jpg",@"recept-ukrainskogo-borshcha-1.jpg", nil];
    [MySingleton sharedInstance].priceList = [NSMutableArray arrayWithObjects:@"500",@"300", nil];
    

}

- (IBAction)salatButton:(id)sender {
    [MySingleton sharedInstance].data = [NSMutableArray arrayWithObjects:@"Салат",@"ssss", nil];
}

- (IBAction)fishButton:(id)sender {
}

- (IBAction)meatButton:(id)sender {
}

- (IBAction)drinkButton:(id)sender {
}

- (IBAction)dessertButton:(id)sender {
}



@end
