//
//  NSArray+ContainsAny.h
//  Scriptive
//
//  Created by Josh Justice on 11/7/13.
//  Copyright (c) 2013 Scriptive. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Contains)

-(BOOL)containsAll:(NSArray *)objectsToSearchFor;
-(BOOL)containsAny:(NSArray *)objectsToSearchFor;

@end
