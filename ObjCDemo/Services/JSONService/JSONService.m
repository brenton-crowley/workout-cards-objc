//
//  JSONService.m
//  ObjCDemo
//
//  Created by Brent Crowley on 21/8/2022.
//

#import "JSONService.h"

@implementation JSONService

+ (NSArray *)jsonArrayForBundleName:(NSString *)fileName {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:fileName ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}

@end
