//
//  TestSpec.m
//  Domain
//
//  Created by zen on 11/10/12.
//  Copyright 2012 111Minutes. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "User.h"

SPEC_BEGIN(TestSpec)
describe(@"qweqw", ^{
    it(@"not nil", ^{
        [[[User shared] should] beNonNil];
    });
});
SPEC_END


