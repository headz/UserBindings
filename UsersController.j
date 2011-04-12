/*
 *  UsersController.j
 *  UserBindingsProject
 *
 *  Created by Kurt Delaplace on 12/04/11.
 *  Copyright Headz 2011. All rights reserved.
*/

@import <AppKit/AppKit.j>
@import <Foundation/Foundation.j>

@import "User.j"

@implementation UsersController : CPWindowController
{
    CPArray users @accessors;
}

-(id)init
{

    self = [super initWithWindowCibName:@"Users"];
    if (self)
    {
        users = [[CPArray alloc] init];
        [users addObject: [[User alloc] init]];
        [users addObject: [[User alloc] init]];
    }
    
    CPLog.debug(@"%s %s [users count] :  %@",[self class],_cmd,[users count]);
    
    return self;
}

-(id)initWithUsers:(CPArray)theUsers 
{
    self = [super initWithWindowCibName:@"Users"];
    if (self)
    {
        users = theUsers;
    };
    return self;
}

-(void)awakeFromCib
{
    CPLog.debug(@"%s %s self :  %@",[self class],_cmd,self);
    
    CPLog.debug(@"%s %s  [users count] :  %@",[self class],_cmd, [users count]);
    
    
}


@end