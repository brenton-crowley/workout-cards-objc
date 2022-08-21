//
//  WorkoutCardView.m
//  ObjCDemo
//
//  Created by Brent Crowley on 20/8/2022.
//

#import "WorkoutCardView.h"
#import <QuartzCore/QuartzCore.h>

@interface WorkoutCardView()

@property (weak, nonatomic) IBOutlet UIImageView *cardImageView;
@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@end

@implementation WorkoutCardView

+ (WorkoutCardView *)initWithCategory: (NSString *)categoryText
                             nameText:(NSString *)nameText
                           detailText: (NSString *)detailText
{
    
    
    
    
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"WorkoutCardView" owner:self options:nil];
    
    WorkoutCardView *view = [views objectAtIndex:0];
    
    view.categoryText = categoryText;
    view.nameText = nameText;
    view.detailText = detailText;
    
    
    
    return view;
    
}

- (void)maskImageView {
    self.cardImageView.layer.cornerRadius = 20.0;
    self.cardImageView.clipsToBounds = YES;
}

- (void)awakeFromNib {
    
    [super awakeFromNib];
    
    [self maskImageView];
}

#pragma - Setter Methods
// Protecting public access to the view's subviews.
- (void)setCategoryText:(NSString *)categoryText {
    _categoryText = categoryText;
    self.categoryLabel.text = self.categoryText;
}

- (void)setNameText:(NSString *)nameText {
    _nameText = nameText;
    self.nameLabel.text = self.nameText;
}

- (void)setDetailText:(NSString *)detailText {
    _detailText = detailText;
    self.detailLabel.text = self.detailText;
}

- (void)setUiImage:(UIImage *)uiImage {
    
    _uiImage = uiImage;
    
    self.cardImageView.image = _uiImage;
}

@end
