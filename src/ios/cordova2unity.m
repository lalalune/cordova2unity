#import "cordova2unity.h"

@implementation cordova2unity

- (void)greet:(CDVInvokedUrlCommand*)command
{
    
    [(AppDelegate *)[UIApplication sharedApplication].delegate showUnityWindow];
    
    
    NSString* name = [[command arguments] objectAtIndex:0];
    NSString* msg = [NSString stringWithFormat: @"Launching Unity"];
    
    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:msg];
    
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];

}

@end