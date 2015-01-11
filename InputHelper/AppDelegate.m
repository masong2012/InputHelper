//
//  AppDelegate.m
//  InputHelper
//
//  Created by MaSong on 14/10/30.
//  Copyright (c) 2014年 MaSong. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    ViewController *controller = [[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];
    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:controller];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
