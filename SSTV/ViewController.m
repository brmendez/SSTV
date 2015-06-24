//
//  ViewController.m
//  SSTV
//
//  Created by Brian Mendez on 5/29/15.
//  Copyright (c) 2015 Brian Mendez. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControlBar;
@property(strong, nonatomic) UIViewController *greenVC;
@property (weak, nonatomic) IBOutlet UIView *mainView;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"cheesyBackground.jpg"]]];
	
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}
- (IBAction)didPressSegButton:(UISegmentedControl *)sender {
	
	NSLog(@"%ld", (long)sender.selectedSegmentIndex);
	
	if ([sender selectedSegmentIndex] == 3) {

		self.greenVC = [self.storyboard instantiateViewControllerWithIdentifier:@"COLLECTION_VIEW"];
		[self.view addSubview:self.greenVC.view];
		[self addChildViewController:self.greenVC];
		self.greenVC.view.frame = self.view.frame;
		[self.greenVC didMoveToParentViewController:self];
		
		self.greenVC.view.frame = CGRectMake(0, 117, self.view.frame.size.width, self.view.frame.size.height);
		
	} if ([sender selectedSegmentIndex] == 1) {
		
	
	}
	
}

@end
