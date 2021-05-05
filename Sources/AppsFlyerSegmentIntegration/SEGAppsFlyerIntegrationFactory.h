//
//  SEGAppsFlyerIntegrationFactory.h
//  AppsFlyerSegmentiOS
//
//  Created by Margot Guetta/Maxim Shoustin on 5/17/16.
//  Copyright © 2016 AppsFlyer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SEGIntegrationFactory.h"
#import "SEGAppsFlyerIntegration.h"


@interface SEGAppsFlyerIntegrationFactory : NSObject <SEGIntegrationFactory>

+ (instancetype)instance;
+ (instancetype)createWithLaunchDelegate:(id<SEGAppsFlyerLibDelegate>) delegate;

+ (instancetype)createWithLaunchDelegate:(id<SEGAppsFlyerLibDelegate>) delegate andDeepLinkDelegate:(id<SEGAppsFlyerDeepLinkDelegate>) DLdelegate;

@property (weak, nonatomic) id<SEGAppsFlyerLibDelegate> delegate;
@property (weak, nonatomic) id<SEGAppsFlyerDeepLinkDelegate> DLDelegate;
@end
