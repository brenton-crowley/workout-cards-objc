//
//  ImageService.h
//  ObjCDemo
//
//  Created by Brent Crowley on 21/8/2022.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^onImageLoaded)(UIImage *);

@interface ImageService : NSObject

+ (void)loadURLString:(NSString *)urlString onComplete:(onImageLoaded)onComplete;

@end

NS_ASSUME_NONNULL_END
