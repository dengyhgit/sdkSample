//
//  sdkSample.m
//  sdkSample-lib
//
//  Created by deng on 16/9/5.
//  Copyright © 2016年 dengyonghao. All rights reserved.
//

#import "sdkSample.h"

#define kCurrentDriveUuid @"kCurrentDriveUuid"

@implementation sdkSample

+ (NSString *)getDocumentDirectory {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    return path;
}

+ (NSString *)getLibraryDirectory {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    return path;
}

+ (NSString *)getCachesDirectory {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    return path;
}

@end
