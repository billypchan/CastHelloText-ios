// Copyright 2014 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "HGCAppDelegate.h"
#import <GoogleCast/GCKLogger.h>

@interface HGCAppDelegate () <GCKLoggerDelegate>

@end

// [START logging]
@implementation HGCAppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // Override point for customization after application launch.
  [GCKLogger sharedInstance].delegate = self;
  return YES;
}

#pragma mark - GCKLoggerDelegate

- (void) logFromFunction:(const char *)function message:(NSString *)message {
  NSLog(@"%s - %@", function, message);
}

@end
// [END logging]
