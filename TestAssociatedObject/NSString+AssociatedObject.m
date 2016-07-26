//
//  NSString+AssociatedObject.m
//  TestAssociatedObject
//
//  Created by Bevis Chen on 7/26/16.
//  Copyright © 2016 Bevis Chen. All rights reserved.
//

#import "NSString+AssociatedObject.h"

// APPLE
#import <objc/runtime.h>

@implementation NSString (AssociatedObject)

// getter
-(NSString*)getMyAssociatedObject {
    
    // _cmd is this method's selector
    return objc_getAssociatedObject(self, _cmd);
}

// setter
-(void)setMyAssociatedObject:(NSString*)myString {
    
    objc_setAssociatedObject(self, @selector(getMyAssociatedObject), myString, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

// release
-(void)releaseMyAssociatedObject {
    
    // set nil for this associated object to release it.
    objc_setAssociatedObject(self, @selector(getMyAssociatedObject), nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

// remove all associated object for this object
-(void)releaseALLAssociatedObject {
    
    objc_removeAssociatedObjects(self);
}
@end
