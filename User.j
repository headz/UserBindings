/*
 *  User.j
 *  UserBindingsProject
 *
 *  Created by Kurt Delaplace on 12/04/11.
 *  Copyright Headz 2011. All rights reserved.
*/

@import <Foundation/Foundation.j>

@implementation User : CPObject
{
    CPString name @accessors;
    CPString familyName @accessors;
    
    CPString accountName @accessors;
    CPString password @accessors;
    
    CPString languageCode @accessors;
}

-(id) init
{
    self = [super init];
    if (self)
    {
        name = "New";
        familyName = "User";
        
        accountName = "New";
        password = "Password";
        
        languageCode = "en";
    }
    return self;
}

@end