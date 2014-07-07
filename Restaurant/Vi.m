//
//  Vi.m
//  Restaurant
//
//  Created by itisioslab on 07.07.14.
//  Copyright (c) 2014 Марсель Хамидуллин. All rights reserved.
//


#import "Vi.h"

@interface Vi ()
{
    NSArray *descriptionFoodCart;
    NSArray *fotoFoodCart;
    NSArray *priceListCart;
    
}

@end

@implementation Vi


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    data = [NSMutableArray arrayWithObjects:@"Суп из креветок",@"Борщик", nil];
    descriptionFoodCart = [NSArray arrayWithObjects:@"11",@"12", nil];
    fotoFoodCart = [NSArray arrayWithObjects:@"perv-26.jpg",@"recept-ukrainskogo-borshcha-1.jpg", nil];
    priceListCart = [NSArray arrayWithObjects:@"500",@"300", nil];
    
    
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
        UIImageView *cellImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 40 , 40)];
        UILabel *cellLabel = [[UILabel alloc]initWithFrame:CGRectMake(45, 0, 250, 30)];
        [cellImageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[fotoFoodCart objectAtIndex:indexPath.row]]]];
        cellLabel.text = dataObject;
        [cell addSubview:cellImageView];
        [cell addSubview:cellLabel];
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
        
        
        textView.text = [descriptionFoodCart objectAtIndex:indexPath.row - 1];
        priceTextView.text =[NSString stringWithFormat:@"Цена: %@ рублей",[priceListCart objectAtIndex:indexPath.row - 1]];
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[fotoFoodCart objectAtIndex:indexPath.row - 1]]];
        NSString *string = @"Заказать";
        [buttonView setTitle: string forState: UIControlStateNormal];
        textView.selectable = NO;
        
        
        //        [buttonView addTarget:self action:@selector(MyMethod:) forControlEvents:UIControlEventTouchUpInside]; //устанавливаем обработчик для нажатия кнопки
        
        
        
        [cell addSubview:imageView];
        [cell addSubview:imageOutView];
        [cell addSubview:textView];
        [cell addSubview:priceTextView];
        [textView setTextColor:[UIColor whiteColor]];
        [cell addSubview:buttonView];
        
        
        
        return cell;
    }
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
    return 40;
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


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
