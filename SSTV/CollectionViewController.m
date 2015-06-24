//
//  CollectionViewController.m
//  SSTV
//
//  Created by Brian Mendez on 5/31/15.
//  Copyright (c) 2015 Brian Mendez. All rights reserved.
//

#import "CollectionViewController.h"
#import "ProductCell.h"

@interface CollectionViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *productLabel;
@property (strong, nonatomic)	NSMutableArray *productNames;
@property (strong, nonatomic) NSArray *submenuLotions;
@property (strong, nonatomic) NSArray *emptyArray;

@end

@implementation CollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];

	self.collectionView.dataSource = self;
	self.collectionView.delegate = self;
	
	self.tableView.dataSource = self;
	self.tableView.delegate = self;
	
	self.tableView.backgroundColor = [UIColor clearColor];
	self.collectionView.backgroundColor = [UIColor clearColor];
	
	self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
		[self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"cheesyBackground.jpg"]]];
	
//	self.productNames = [[NSMutableArray alloc] initWithArray:[NSArray arrayWithObjects:@"Dark Lotion", @"Sparkly Lotion", @"Vanilla Lotion", @"Shiny Lotion", nil]];
	
	self.submenuLotions = @[@"Light Lotions", @"Dark Lotion", @"Body Butter"];
	
}

#pragma mark Table View
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
	return self.submenuLotions.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL" forIndexPath:indexPath];
	cell.backgroundColor = [UIColor clearColor];
	

	cell.textLabel.text = self.submenuLotions[indexPath.row];
	cell.textLabel.textColor = [UIColor orangeColor];
	cell.selectionStyle = UITableViewCellSelectionStyleNone;
	cell.textLabel.font = [UIFont boldSystemFontOfSize:17];
	
	
	return cell;
	
}

#pragma mark Collection View
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
	
	return self.productNames.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
	
	ProductCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CELL" forIndexPath:indexPath];
	
	cell.contentView.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.2];
//	cell.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.2];
	
	cell.productLabel.text = self.productNames[indexPath.row];
	
	return cell;
	
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
	// If you created a custom label, get it like the next line and then change the color of it;
	// UILabel * label = (UILabel *) [selectedCell viewWithTag: UNIQUE_TAG];
	selectedCell.textLabel.textColor = [UIColor orangeColor]; // Or which color you'd like.
	selectedCell.textLabel.font = [UIFont boldSystemFontOfSize:25.0];
	
	if (indexPath.row == 0) {
		NSLog(@"You have Selected Light Lotion");
		
		self.productNames = [[NSMutableArray alloc] initWithArray:[NSArray arrayWithObjects:@"Light Lotion 1", @"Light Lotion 2", @"Light Lotion 3", @"Light Lotion 4", nil]];
		[self.collectionView reloadData];
		
	} else if (indexPath.row == 1) {
		
		self.productNames = [[NSMutableArray alloc] initWithArray:[NSArray arrayWithObjects:@"Dark Lotion 1", @"Dark Lotion 2", @"Dark Lotion 3", @"Dark Lotion 4", nil]];
		[self.collectionView reloadData];
		
		NSLog(@"You have Selected Dark Lotion");
	} else {
		self.productNames = [[NSMutableArray alloc] initWithArray:[NSArray arrayWithObjects:@"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", @"Other Lotions", nil]];
		[self.collectionView reloadData];
		
		NSLog(@"You have Selected Body Butter");
	}
	
	
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	UITableViewCell * selectedCell = [tableView cellForRowAtIndexPath:indexPath];
	// If you created a custom label, get it like the next line and then change the color of it;
	// UILabel * label = (UILabel *) [selectedCell viewWithTag: UNIQUE_TAG];
	selectedCell.textLabel.textColor = [UIColor orangeColor]; // Or which color you'd like.
	selectedCell.textLabel.font = [UIFont boldSystemFontOfSize:17.0];
	
	
}

	-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
		
		UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
		cell.contentView.backgroundColor = [self makeColorRGBWithR:55 G:152 B:174 A:0.2];
		
	}

	-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
		
		UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
		cell.contentView.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.2];
		
	}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIColor *)makeColorRGBWithR:(CGFloat)red G:(CGFloat)green B:(CGFloat)blue A:(CGFloat)alpha {
	//RGB needs float from 0-1, not 0-255...
	return [UIColor colorWithRed:(red/255.0) green:(green/255.0) blue:(blue/255.0) alpha:alpha];
}



@end
