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
    [MySingleton sharedInstance].data = [NSMutableArray arrayWithObjects:
                                         @"Рыбный суп с филе лосося",
                                         @"Суп с телятиной",
                                         @"Суп из белых грибов",
                                         nil];
    [MySingleton sharedInstance].descriptionFood = [NSMutableArray arrayWithObjects:
                                                    @"Манит-пленяет-обжигает и обещает наслаждение даже сам вид этого блюда. Серьезные цельные куски рыбы, наваристый бульон с пряными травами и овощами. Сытный вкусный суп с аппетитным ароматом!",
                                                    @"Насыщенный мясной бульон из телячьей грудки. Подается с отварным картофелем, обжаренной телятиной и дополнительным ароматным мясным бульоном с чесноком и кинзой в соуснике.",
                                                    @"Ароматный сытный крем-суп из грибов Портобелло, шампиньонов и белых грибов. Подается с пшеничными чесночными гренками. Блюдо может быть приготовлено в постном варианте. Предупреждайте официанта заранее.",
                                                    nil];
    [MySingleton sharedInstance].fotoFood = [NSMutableArray arrayWithObjects:
                                             @"Рыбный суп с филе лосося и дорада.jpg",
                                             @"Суп с телятиной и картофелем.jpg",
                                             @"Суп из белых грибов и шампиньонов со сливками.jpg",
                                             nil];
    [MySingleton sharedInstance].priceList = [NSMutableArray arrayWithObjects:
                                              @"520",
                                              @"520",
                                              @"490",
                                              nil];
    

}

- (IBAction)salatButton:(id)sender {
    [MySingleton sharedInstance].data = [NSMutableArray arrayWithObjects:
                                         @"Салат «Нью Йорк»",
                                         @"Коул-слоу с крабом",
                                         @"Cалат «Флорида»",
                                         nil];
    [MySingleton sharedInstance].descriptionFood = [NSMutableArray arrayWithObjects:
                                                    @" Приготовленный в хоспере на древесных углях до состояния medium rare и нарезанный на ломтики совершенной формы стейк «Нью-Йорк» в сочетании с романо, айсбергом, рукколой, спаржей и корнишонами. Подвяленные томаты придают блюду пикантность, а сложный соус на основе горчицы и меда, а также манго и клубники, раскрывает вкус мраморного мяса.",
                                                    @"Классическое американское дополнение к стейку с камчатским крабом.",
                                                    @"Легкий салат с фламбированной грушей и виноградом, подается с жареным сыром «Камамбер», соусами из брусники и маракуйи",
                                                    nil];
    [MySingleton sharedInstance].fotoFood = [NSMutableArray arrayWithObjects:
                                             @"Салат «Нью Йорк».jpg",
                                             @"Коул-слоу с крабом.jpg",
                                             @"Салат «Флорида».jpg",
                                             nil];
    [MySingleton sharedInstance].priceList = [NSMutableArray arrayWithObjects:
                                              @"880",
                                              @"720",
                                              @"580",
                                              nil];
}

- (IBAction)fishButton:(id)sender {
    [MySingleton sharedInstance].data = [NSMutableArray arrayWithObjects:
                                         @"Стейк из чилийского сибаса",
                                         @"Стейк из лосося",
                                         @"Тигровые креветки",
                                         nil];
    [MySingleton sharedInstance].descriptionFood = [NSMutableArray arrayWithObjects:
                                                    @"По кулинарным меркам - это определенно роман с пронзительным содержанием. Настолько стейк чилийского сибаса сытный, основательный, брутальный и одновременно с тем - божественно вкусный. Лаконичная подача сближает это блюдо с культурой стейков. Картофельное пюре с сыром Рокфор идеально подойдет к этому блюду.",
                                                    @"Для любителей рыбы. Гениальность в простоте. Стейк норвежского лосося, обжаренный до золотистой корочки, подается с лимоном. Стейк из лосося идеально сочетается с овощами и спаржей гриль, картофельным пюре и салатом из спелых томатов.",
                                                    @"Блюдо уникальной гастрономической цельности и ценности. Главный тон задают креветки, а обжаренные овощи цуккини, спаржа, сельдерей, помидоры черри и лук порей, словно сохранившие запах приятного дымка от костра, привносят основательность и сытную серьезность.",
                                                    nil];
    [MySingleton sharedInstance].fotoFood = [NSMutableArray arrayWithObjects:
                                             @"Стейк из чилийского сибаса.jpg",
                                             @"Стейк из лосося.jpg",
                                             @"Тигровые креветки .jpg",
                                             nil];
    [MySingleton sharedInstance].priceList = [NSMutableArray arrayWithObjects:
                                              @"1180",
                                              @"890",
                                              @"980",
                                              nil];}

- (IBAction)meatButton:(id)sender {
    [MySingleton sharedInstance].data = [NSMutableArray arrayWithObjects:
                                         @"«Нью-Йорк» стейк",
                                         @"Филе-Миньон",
                                         @"Филе-Шато",
                                         nil];
    [MySingleton sharedInstance].descriptionFood = [NSMutableArray arrayWithObjects:
                                                    @"Стейк из поясничной части. Травяной откорм.",
                                                    @"Для этого стейка используется только центральная часть говяжьей вырезки - самое нежное и постное мясо. 120 дней зернового откорма",
                                                    @"Оригинальный стейк из головной части вырезки. 120 дней зернового откорма",
                                                    nil];
    [MySingleton sharedInstance].fotoFood = [NSMutableArray arrayWithObjects:
                                             @"ньюйорк стейк.jpg",
                                             @"Филе-Миньон.jpg",
                                             @"Филе-Шато.jpg",
                                             nil];
    [MySingleton sharedInstance].priceList = [NSMutableArray arrayWithObjects:
                                              @"1870",
                                              @"1970",
                                              @"1970",
                                              nil];
}

- (IBAction)drinkButton:(id)sender {
    [MySingleton sharedInstance].data = [NSMutableArray arrayWithObjects:
                                         @"Мартини Рояле",
                                         @"Аперол Спритц",
                                         @"Португальский лимонад",
                                         nil];
    [MySingleton sharedInstance].descriptionFood = [NSMutableArray arrayWithObjects:
                                                    @"Вермут Мартини Бьянко, игристое вино Мартини Просекко, сок лайма, мята, свежий лайм",
                                                    @"Биттер Аперол, игристое вино Мартини Просекко, минеральная вода Перье, свежий апельсин",
                                                    @"Белый портвейн, тоник, свежий лайм, виноград",
                                                    nil];
    [MySingleton sharedInstance].fotoFood = [NSMutableArray arrayWithObjects:
                                             @"Мартини Рояле.jpg",
                                             @"Аперол Спритц.jpg",
                                             @"Португальский лимонад с лаймом и виноградом.jpg",
                                             nil];
    [MySingleton sharedInstance].priceList = [NSMutableArray arrayWithObjects:
                                              @"480",
                                              @"440",
                                              @"480",
                                              nil];

}

- (IBAction)dessertButton:(id)sender {
    [MySingleton sharedInstance].data = [NSMutableArray arrayWithObjects:
                                         @"Мусс из манго",
                                         @"Чизкейк «Нью-Йорк»",
                                         @"Теплый яблочный пирог",
                                         nil];
    [MySingleton sharedInstance].descriptionFood = [NSMutableArray arrayWithObjects:
                                                    @"Легкий фруктовый десерт с необычным нежным вкусом",
                                                    @"Легендарный десерт на основе сливочного сыра «Филадельфия»",
                                                    @"Домашний пирог из слоеного теста и свежих яблок.Подается с ванильным мороженым",
                                                    nil];
    [MySingleton sharedInstance].fotoFood = [NSMutableArray arrayWithObjects:
                                             @"Мусс из манго, маракуйи и сливок.jpg",
                                             @"Чизкейк «Нью-Йорк».jpg",
                                             @"Теплый яблочный пирог.jpg",
                                             nil];
    [MySingleton sharedInstance].priceList = [NSMutableArray arrayWithObjects:
                                              @"410",
                                              @"410",
                                              @"410",
                                              nil];
    
}





@end
