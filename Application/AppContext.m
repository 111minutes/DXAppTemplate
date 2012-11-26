//
//  AppContext.m
//  Application
//
//  Created by zen on 11/12/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "AppContext.h"
#import "RootViewController.h"
#import "AppearanceConfiguration.h"

@implementation AppContext

+ (void)setup
{   
    [IJContext setDefaultContext:[IJContext new]];
    
    [[IJContext defaultContext] registerClass:[RootViewController class] instantiationMode:IJContextInstantiationModeSingleton];
    [[IJContext defaultContext] registerClass:[AppearanceConfiguration class] instantiationMode:IJContextInstantiationModeSingleton];
}

@end
