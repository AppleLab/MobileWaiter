//
//  drinkTableViewClass.m
//  Restaurant
//
//  Created by Марсель Хамидуллин on 05.07.14.
//  Copyright (c) 2014 Марсель Хамидуллин. All rights reserved.
//

#import "drinkTableViewClass.h"

@interface drinkTableViewClass ()
{
    NSArray *descriptionFood;
    NSArray *fotoFood;
    NSArray *priceList;
    NSInteger ind;
    NSInteger indd;
}

@end

@implementation drinkTableViewClass

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    data = [NSMutableArray arrayWithObjects:@"Пивчанский",@"Боярышник", nil];
    descriptionFood = [NSArray arrayWithObjects:@"Лучший Жигуль на районе, братишки одобряют",@"Если у тебя мало денег, а трубы горят -- это предложение для тебя", nil];
    fotoFood = [NSArray arrayWithObjects:@"zhighulievskoie.jpg",@"47754-boyarp.JPG", nil];
    priceList = [NSArray arrayWithObjects:@"80",@"10", nil];
    
    
}

- (void)awakeFromNib
{
    expandedRowIndex = -1;
    data = [NSMutableArray new];
    for (int i = 0; i < 1000; i++)
    {
        //[data addObject:[NSString stringWithFormat:@"Data cell %d", i]];
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [data count] + (expandedRowIndex != -1 ? 1 : 0);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row = [indexPath row];
    NSInteger dataIndex = [self dataIndexForRowIndex:row];
    NSString *dataObject = [data objectAtIndex:dataIndex];
    
    BOOL expandedCell = expandedRowIndex != -1 && expandedRowIndex + 1 == row;
    
    if (!expandedCell)
    {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"data"];
        if (!cell)
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"data"];
        UIImageView *cellImageView = [[UIImageView alloc]initWithFrame:CGRectMake(5, 10, 50 , 50)];
        UILabel *cellLabel = [[UILabel alloc]initWithFrame:CGRectMake(60, 15, 250, 30)];
        UILabel *cellLabelPrice = [[UILabel alloc]initWithFrame:CGRectMake(240, 10, 320, 30)];
        [cellImageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[fotoFood objectAtIndex:indexPath.row]]]];
        cellLabel.text = dataObject;
        [cellLabel setFont: [UIFont fontWithName:@"helvetica" size:13.0f]];
        cellLabelPrice.text = [NSString stringWithFormat:@"%@ р.",[priceList objectAtIndex:indexPath.row]];
        cellLabelPrice.textColor = [UIColor grayColor];
        [cell addSubview:cellImageView];
        [cell addSubview:cellLabel];
        [cell addSubview:cellLabelPrice];
        return cell;
        return cell;
    }
    
    
    else
    {
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"expanded"];
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 260)];
        UIImageView *imageOutView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 260)];
        UITextView *textView = [[UITextView alloc]initWithFrame:CGRectMake(10, 20, 270, 220)];
        UITextView *priceTextView = [[UITextView alloc]initWithFrame:CGRectMake(10, 230, 180, 30)];
        UIButton *buttonView = [[UIButton alloc]initWithFrame:CGRectMake(230, 230, 80, 30)];
        
        
        
        
        if (!cell)
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"expanded"];
        
        
        imageOutView.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.5];
        textView.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.0];
        priceTextView.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.0];
        [buttonView setTitleColor: [UIColor whiteColor] forState: UIControlStateNormal];
        [priceTextView setTextColor:[UIColor whiteColor]];
        
        
        textView.text = [descriptionFood objectAtIndex:indexPath.row - 1];
        priceTextView.text =[NSString stringWithFormat:@"Цена: %@ рублей",[priceList objectAtIndex:indexPath.row - 1]];
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[fotoFood objectAtIndex:indexPath.row - 1]]];
        NSString *string = @"Заказать";
        [buttonView setTitle: string forState: UIControlStateNormal];
        textView.selectable = NO;
        
        
        [buttonView addTarget:self action:@selector(MyMethod:) forControlEvents:UIControlEventTouchUpInside]; //устанавливаем обработчик для нажатия кнопки
        
        
        
        [cell addSubview:imageView];
        [cell addSubview:imageOutView];
        [cell addSubview:textView];
        [cell addSubview:priceTextView];
        [textView setTextColor:[UIColor whiteColor]];
        [cell addSubview:buttonView];
        
        
        
        return cell;
    }
}



-(IBAction)MyMethod:(id)sender{
    NSLog(@"НАПИТОК ЗАКАЗАН");
}


- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row = [indexPath row];
    BOOL preventReopen = NO;
    
    if (row == expandedRowIndex + 1 && expandedRowIndex != -1)
        return nil;
    
    [tableView beginUpdates];
    
    if (expandedRowIndex != -1)
    {
        NSInteger rowToRemove = expandedRowIndex + 1;
        
        preventReopen = row == expandedRowIndex;
        if (row > expandedRowIndex)
            row--;
        expandedRowIndex = -1;
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:[NSIndexPath indexPathForRow:rowToRemove inSection:0]] withRowAnimation:UITableViewRowAnimationTop];
    }
    NSInteger rowToAdd = -1;
    if (!preventReopen)
    {
        rowToAdd = row + 1;
        expandedRowIndex = row;
        [tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:[NSIndexPath indexPathForRow:rowToAdd inSection:0]] withRowAnimation:UITableViewRowAnimationTop];
        
    }
    [tableView endUpdates];
    
    return nil;
}

- (CGFloat)tableView:(UITableView *)aTableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row = [indexPath row];
    if (expandedRowIndex != -1 && row == expandedRowIndex + 1)
        return 260;
    return 60;
}

- (NSInteger)dataIndexForRowIndex:(NSInteger)row
{
    if (expandedRowIndex != -1 && expandedRowIndex <= row)
    {
        if (expandedRowIndex == row)
            return row;
        else
            return row - 1;
    }
    else
        return row;
}



@end
