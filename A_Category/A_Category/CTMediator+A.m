//
//  CTMediator+A.m
//  A_Category
//
//  Created by casa on 2016/12/10.
//  Copyright © 2016年 casa. All rights reserved.
//

#import "CTMediator+A.h"

@implementation CTMediator (A)

- (UIViewController *)A_aViewControllerWithCallback:(void(^)(NSString *result))callback;
{
    /*
        AViewController *viewController = [[AViewController alloc] init];
     */
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:@"A" action:@"viewController" params:params shouldCacheTarget:NO];
}

@end
