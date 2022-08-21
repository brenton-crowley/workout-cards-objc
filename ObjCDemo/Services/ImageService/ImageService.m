//
//  ImageService.m
//  ObjCDemo
//
//  Created by Brent Crowley on 21/8/2022.
//

#import "ImageService.h"


@implementation ImageService

+ (void)loadURLString:(NSString *)urlString onComplete:(onImageLoaded)onComplete {
    
    NSURL *imageURL = [NSURL URLWithString:urlString];
    
    if (imageURL)
    {
        NSURLRequest *request = [NSURLRequest requestWithURL:imageURL];
        
        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration ephemeralSessionConfiguration];
        
        NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];

        NSURLSessionDownloadTask *task = [session downloadTaskWithRequest:request
            completionHandler:^(NSURL *localfile, NSURLResponse *response, NSError *error) {
                
                if (!error) {
                    if ([request.URL isEqual:imageURL]) {
                        
                        UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:localfile]];
                        
                        if (onComplete) { onComplete(image); }
                        
                        onComplete(image);
                    }
                }
        }];
        [task resume];
    }
    
}


@end
