//
//  ViewController.m
//  sdkSampleDemo
//
//  Created by deng on 16/9/14.
//  Copyright © 2016年 dengyonghao. All rights reserved.
//

#import "ViewController.h"
#import <sdkSample/sdkSample.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", [sdkSample getDocumentDirectory]);
    NSLog(@"%@", [sdkSample getCachesDirectory]);
    NSLog(@"%@", [sdkSample getLibraryDirectory]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
