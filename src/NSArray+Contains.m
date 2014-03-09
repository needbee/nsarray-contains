//
//  NSArray+ContainsAny.m
//  Scriptive
//
//  Created by Josh Justice on 11/7/13.
//  Copyright (c) 2013 Scriptive. All rights reserved.
//

#import "NSArray+Contains.h"

@implementation NSArray (Contains)

-(BOOL)containsAll:(NSArray *)objectsToSearchFor
{
    for( id obj in objectsToSearchFor ) {
        if( ![self containsObject:obj] ) {
            return false;
        }
    }
    return true;
}

-(BOOL)containsAny:(NSArray *)objectsToSearchFor
{
    for( id obj in objectsToSearchFor ) {
        if( [self containsObject:obj] ) {
            return true;
        }
    }
    return false;
}

@end
