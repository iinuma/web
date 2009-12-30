//
//  webAppDelegate.h
//  web
//
//  Created by admin on 09/12/30.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface webAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet UIWebView *webView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
-(IBAction) loadUrl:(UITextField *) sender;
@end

