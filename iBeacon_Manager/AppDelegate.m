//
//  AppDelegate.m
//  iBeacon_Manager
//
//  Created by David Crow on 9/26/13.
//  Copyright (c) 2013 David Crow. All rights reserved.
//

#import "AppDelegate.h"
#import "BeaconRegionManager.h"
#import "UAirship.h"
#import "UAConfig.h"
#import "UAPush.h"
#import "UANotificationHandler.h"
#import "UALocationService.h"


@interface AppDelegate ()

@property (nonatomic, strong) UANotificationHandler *notificationDelegate;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    

    // Populate AirshipConfig.plist with your app's info from https://go.urbanairship.com
    // or set runtime properties here.
    UAConfig *config = [UAConfig defaultConfig];
    

    // Call takeOff (which creates the UAirship singleton)
    [UAirship takeOff:config];
    [[UAPush shared] setPushEnabled:YES];
    
    
    self.notificationDelegate = [[UANotificationHandler alloc] init];
    [UAPush shared].pushNotificationDelegate = self.notificationDelegate;
    
    
    //UALocationService auth
    [UALocationService locationServicesEnabled];
    [UALocationService locationServiceAuthorized];
    [UALocationService airshipLocationServiceEnabled];

    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{

}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
}

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *) error
{
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo
{
    
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}


- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    
}


- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
    // If the application is in the foreground, we will notify the user of the region's state via an alert.
    //UIAlertView *alert = [[UIAlertView alloc] initWithTitle:notification.alertBody message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    //[alert show];
}

@end
