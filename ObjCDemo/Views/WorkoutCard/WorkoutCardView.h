//
//  WorkoutCardView.h
//  ObjCDemo
//
//  Created by Brent Crowley on 20/8/2022.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WorkoutCardView : UICollectionViewCell

@property (strong, nonatomic) NSString *categoryText;
@property (strong, nonatomic) NSString *nameText;
@property (strong, nonatomic) NSString *detailText;
@property (strong, nonatomic) UIImage *uiImage;

+ (WorkoutCardView *)initWithCategory: (NSString *)categoryText nameText:(NSString *)nameText detailText: (NSString *)detailText;

@end

NS_ASSUME_NONNULL_END
