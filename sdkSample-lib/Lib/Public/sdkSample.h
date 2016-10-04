//
//  sdkSample.h
//  sdkSample-lib
//
//  Created by deng on 16/9/5.
//  Copyright © 2016年 dengyonghao. All rights reserved.
//

#import <Foundation/Foundation.h>

/*! SDK 版本号，用于展示 SDK 的版本信息 */
#define SDK_VERSION @"1.0.0"

/*! SDK 构建ID，每次构建都会增加 */
#define SDK_BUILD 1007

@interface sdkSample : NSObject

/**
 *  DocumentDirectory
 *
 *  @return DocumentDirectory目录
 */
+ (NSString *)getDocumentDirectory;

/**
 *  LibraryDirectory
 *
 *  @return LibraryDirectory目录
 */
+ (NSString *)getLibraryDirectory;

/**
 *  CachesDirectory
 *
 *  @return CachesDirectory目录
 */
+ (NSString *)getCachesDirectory;

@end
