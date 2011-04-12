/*
 * AppController.j
 * UserBindings
 *
 * Created by You on April 11, 2011.
 * Copyright 2011, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>
@import "UsersController.j"


@implementation AppController : CPObject
{
    CPWindow    theWindow; //this "outlet" is connected automatically by the Cib
    UsersController usersWindowController;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    // Uncomment the following line to turn on the standard menu bar.
    //[CPMenu setMenuBarVisible:YES];
    usersWindowController = nil;
}


- (void)awakeFromCib
{
    // This is called when the cib is done loading.
    // You can implement this method on any object instantiated from a Cib.
    // It's a useful hook for setting up current UI values, and other things. 
    
    // In this case, we want the window from Cib to become our full browser window
    [theWindow setFullBridge:YES];
}

-(void) pushedButton:(id)theSender
{
    //var usersWindowController = [[UsersController alloc] init];
    //[CPApp runModalForWindow:[usersWindowController window]];
    if (usersWindowController === nil)
    {
        usersWindowController = [[UsersController alloc] init];
    }
    [[usersWindowController window] orderFront:self];
    
}
@end
