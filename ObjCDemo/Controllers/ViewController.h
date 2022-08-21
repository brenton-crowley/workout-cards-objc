//
//  ViewController.h
//  ObjCDemo
//
//  Created by Brent Crowley on 19/8/2022.
//

#import <UIKit/UIKit.h> // Need to import the super class.

@interface ViewController : UIViewController<UICollectionViewDataSource> // Must always say the subclass.

@property (strong, nonatomic) NSMutableArray *workouts;

@end

