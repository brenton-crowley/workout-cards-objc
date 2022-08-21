//
//  Workout.m
//  ObjCDemo
//
//  Created by Brent Crowley on 19/8/2022.
//

#import <Foundation/Foundation.h>
#import "Workout.h"

@interface Workout ()

@property (strong, nonatomic, readwrite) NSUUID *uuid;

@end

@implementation Workout

// @synthesize automatically creates getter/setters for properties.
//@synthesize name = _name;
//@synthesize subCategoryName = _subCategoryName;
//@synthesize exerciseCount = _exerciseCount;
//@synthesize imageURL = _imageURL;
//@synthesize circuitNumber = _circuitNumber;
//@synthesize estimatedDuration = _estimatedDuration;

// if you implement both setter and getter, then you must @synthesize

- (NSUUID *)uuid {
    
    if (!_uuid) { _uuid = [[NSUUID alloc]init]; }
    
    return _uuid;
}

// override init
+ (Workout *)initWithName:(NSString *)name forCategory: (NSString *)category {

    Workout *workout = [[Workout alloc] init];
    workout.name = name;
    workout.subCategoryName = category;
    
    return workout;
}

+ (Workout *)initWithJSONDict:(NSDictionary *)dict {
    
    Workout *workout = [[Workout alloc] init];
    
    NSString *name = [dict objectForKey:@"name"];
    NSString *category = [dict objectForKey:@"subcategory_name"];
    NSNumber *circuitCount = [dict objectForKey:@"circuit_count"];
    NSNumber *exerciseCount = [dict objectForKey:@"exercise_count"];
    NSString *estimatedDuration = [dict objectForKey:@"estimated_duration"];
    NSString *imageURL = [dict objectForKey:@"image"];
    
    if (name) { workout.name = name; }
    if (category) { workout.subCategoryName = category; }
    if (circuitCount) { workout.circuitNumber = circuitCount.unsignedIntValue; }
    if (exerciseCount) { workout.exerciseCount = exerciseCount.unsignedIntValue; }
    if (estimatedDuration) { workout.estimatedDuration = estimatedDuration; }
    if (imageURL) { workout.imageURL = imageURL; }
    
    return workout;
}

@end
