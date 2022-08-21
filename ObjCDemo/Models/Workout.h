//
//  Workout.h
//  ObjCDemo
//
//  Created by Brent Crowley on 19/8/2022.
//

#ifndef Workout_h
#define Workout_h


#endif /* Workout_h */

@interface Workout : NSObject

@property (strong, nonatomic, readonly) NSUUID *uuid;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *subCategoryName;
@property (nonatomic) unsigned long circuitNumber;
@property (nonatomic) unsigned long exerciseCount;
@property (strong, nonatomic) NSString *estimatedDuration;
@property (strong, nonatomic) NSString *imageURL;

+ (Workout *)initWithName:(NSString *)name forCategory: (NSString *)category;
+ (Workout *)initWithJSONDict:(NSDictionary *)dict;

@end
