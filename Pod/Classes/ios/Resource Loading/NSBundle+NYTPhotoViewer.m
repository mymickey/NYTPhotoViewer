//
//  NSBundle+NYTPhotoViewer.m
//  NYTPhotoViewer
//
//  Created by Chris Dzombak on 10/16/15.
//
//

#import "NSBundle+NYTPhotoViewer.h"
#import "NYTPhotosViewController.h"

@implementation NSBundle (NYTPhotoViewer)

+ (instancetype)nyt_photoViewerResourceBundle {
    static NSBundle *resourceBundle = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL *resourceBundleURL = [[NSBundle bundleForClass:[NYTPhotosViewController class]] URLForResource:@"NYTPhotoViewer" withExtension:@"bundle"];
        resourceBundle = [self bundleWithURL:resourceBundleURL];
    });
    return resourceBundle;
}

@end
