//
//  User.h
//  Domain
//
//  Created by zen on 11/10/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <DXDomain/DXDomain.h>
#import <DXFoundation/DXSingleton.h>

@interface User : DXDomainModel <DXSingleton>

@property (nonatomic, strong) NSString *name;

@end
