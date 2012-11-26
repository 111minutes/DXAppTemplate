//
//  AppDelegate.m
//  DXAppTemplate
//
//  Created by zen on 11/10/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "AppDelegate.h"
#import "DXRootController.h"
#import "AppContext.h"
#import "DXAppearanceConfiguration.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)setupAppearanceConfiguration
{
    NSArray *apperanceConfigurations = [[IJContext defaultContext] instantiateAllClassesImplementingProtocol:@protocol(DXAppearanceConfiguration) withProperties:nil];
    
    for (id<DXAppearanceConfiguration> apperanceConfiguration in apperanceConfigurations) {
        [apperanceConfiguration setup];
    }
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{    
    Class contextClass = NSClassFromString([[[NSBundle mainBundle] infoDictionary] valueForKey:@"DXAppContextClassName"]);
    
    [contextClass setup];
    
    [self setupAppearanceConfiguration];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.rootViewController = [[IJContext defaultContext] instantiateClassImplementingProtocol:@protocol(DXRootController) withProperties:nil];
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
