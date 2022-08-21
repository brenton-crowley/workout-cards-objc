//
//  JSONService.h
//  ObjCDemo
//
//  Created by Brent Crowley on 21/8/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JSONService : NSObject

+ (NSArray *)jsonArrayForBundleName:(NSString *)fileName;

@end

NS_ASSUME_NONNULL_END
