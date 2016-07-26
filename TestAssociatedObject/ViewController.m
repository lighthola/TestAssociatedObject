//
//  ViewController.m
//  TestAssociatedObject
//
//  Created by Bevis Chen on 7/26/16.
//  Copyright © 2016 Bevis Chen. All rights reserved.
//

#import "ViewController.h"

// My Model
#import "NSString+AssociatedObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *myString = [NSString new];
    
    // setter
    [myString setMyAssociatedObject:@"I am GOD WUSOPO！！"];
    
    // getter
    NSLog(@"%@",[myString getMyAssociatedObject]);

    BOOL isRemoveALL = true;
    if (isRemoveALL) {
        // release all associated object
        [myString releaseALLAssociatedObject];
    } else {
        // release MyAssociatedObject
        [myString releaseMyAssociatedObject];
    }
    NSLog(@"%@",[myString getMyAssociatedObject] ? @"GOD WUSOPO is alive~" : @"GOD WUSOPO is sick...");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
