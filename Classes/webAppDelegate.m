//
//  webAppDelegate.m
//  web
//
//  Created by admin on 09/12/30.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "webAppDelegate.h"

@implementation webAppDelegate

@synthesize window;

-(IBAction) loadUrl:(UITextField *) sender{
	NSString* urlStr=[sender text];
	//interface Builderで接続したテキストフィールドUITextFiledのインスタンスがわたってくるので
	//そのtextメソッドを呼び出すことで、テキストフィールドに入力されている文字列を取り出します。
	NSURL* url=[NSURL URLWithString: urlStr];
	//URLを扱うクラスであるNSURLにUITextFieldの値を入れ、URLとして扱えるようにする。
	NSURLRequest* urlReq = [NSURLRequest requestWithURL:url];
	//さらにwebサーバーへ渡せるよう（webViewに渡せるよう）にNSURLRequestへ渡すらしい。
	//リクエストという形にした後、webViewへ渡す↓
	[webView loadRequest:urlReq];
	//リクエストurlReqをwebViewへ読み込ませる↑
	

}
- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
	[webView release];
    [super dealloc];
}


@end
