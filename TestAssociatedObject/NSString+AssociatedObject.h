//
//  NSString+AssociatedObject.h
//  TestAssociatedObject
//
//  Created by Bevis Chen on 7/26/16.
//  Copyright © 2016 Bevis Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AssociatedObject)

-(NSString*)getMyAssociatedObject;
-(void)setMyAssociatedObject:(NSString*)myString;
-(void)releaseMyAssociatedObject;
-(void)releaseALLAssociatedObject;

@end
