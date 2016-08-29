/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

//
//  AppDelegate.m
//  HelloCordova
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@implementation AppDelegate

- (UIWindow *)unityWindow {
    return UnityGetMainWindow();
}

- (void) showUnityWindow{
 
    [self.unityWindow makeKeyAndVisible];
    
}

-(void) hideUnityWindow {
    
    [self.window makeKeyAndVisible];

}

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    self.viewController = [[MainViewController alloc] init];
    
    self.unityController = [[UnityAppController alloc] init];
    [self.unityController application:application didFinishLaunchingWithOptions:launchOptions];
    
    
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

-(void)applicationWillResignActive:(UIApplication *)application{
    [self.unityController applicationWillResignActive:application];
}


-(void)applicationDidEnterBackground:(UIApplication *)application{
    [self.unityController applicationDidEnterBackground:application];
}

-(void)applicationWillEnterForeground:(UIApplication *)application{
    [self.unityController applicationWillEnterForeground:application];
}

-(void)applicationDidBecomeActive:(UIApplication *)application{
    [self.unityController applicationDidBecomeActive:application];
}

-(void)applicationWillTerminate:(UIApplication *)application{
    [self.unityController applicationWillTerminate:application];
}


@end
