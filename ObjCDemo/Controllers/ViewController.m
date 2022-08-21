//
//  ViewController.m
//  ObjCDemo
//
//  Created by Brent Crowley on 19/8/2022.
//

#import "ViewController.h"
#import "WorkoutCardView.h"
#import "Workout.h"
#import "JSONService.h"
#import "ImageService.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *cardsCollection;
@end

@implementation ViewController

static NSString *cellID = @"WorkoutCardCell";

- (NSMutableArray *)workouts {
    
    if (!_workouts) _workouts = [[NSMutableArray alloc] init];
    
    return _workouts;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self loadWorkoutCell];
    [self loadWorkoutsFromBundle];
}

- (void)loadWorkoutCell {
    [self.cardsCollection registerNib:[UINib nibWithNibName:@"WorkoutCardView" bundle:[NSBundle mainBundle]]
           forCellWithReuseIdentifier:cellID];
}

#pragma UICollectionViewDataSource Implementation

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    
    return self.workouts.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                           cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    WorkoutCardView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID
                                                                      forIndexPath:indexPath];
    Workout *workout = [self.workouts objectAtIndex:indexPath.row];
    
    cell.nameText = workout.name;
    cell.categoryText = [workout.subCategoryName uppercaseString];
    
    NSString *detail = [NSString stringWithFormat:@"%lu Circuits • %lu Exercises • %@ Mins", workout.circuitNumber, workout.exerciseCount, workout.estimatedDuration];
    cell.detailText = detail;
    
    [self startDownloadingImageFromURLString:workout.imageURL onWorkoutCardView:cell];
    
    return cell;
}

- (void)loadWorkoutsFromBundle
{
    NSArray *jsonArray = [JSONService jsonArrayForBundleName:@"workouts"];
    
    for (NSDictionary *jsonDict in jsonArray) {
        
        Workout *workout = [Workout initWithJSONDict:jsonDict];
        
        [self.workouts addObject:workout];
    }
}

#pragma Card Image

- (void)startDownloadingImageFromURLString:(NSString *)urlString onWorkoutCardView:(WorkoutCardView *)cardView
{
    
    [ImageService loadURLString:urlString onComplete:^(UIImage * uiImage) {
            dispatch_async(dispatch_get_main_queue(), ^{ cardView.uiImage = uiImage; });
    }];
}


@end
