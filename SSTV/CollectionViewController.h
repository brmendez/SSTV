//
//  CollectionViewController.h
//  SSTV
//
//  Created by Brian Mendez on 5/31/15.
//  Copyright (c) 2015 Brian Mendez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDataSource, UITableViewDelegate>

- (UIColor *)makeColorRGBWithR:(CGFloat)red G:(CGFloat)green B:(CGFloat)blue A:(CGFloat)alpha;

@end
