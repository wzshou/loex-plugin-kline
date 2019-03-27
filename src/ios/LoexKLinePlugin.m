//
//  TestPlugin.m
//  loexKLine
//
//  Created by Loex2019 on 2019/3/16.
//

#import "LoexKLinePlugin.h"
#import <wxxlib3/Y_StockChartViewController.h>


@implementation LoexKLinePlugin


-(void)showKLine:(CDVInvokedUrlCommand *)command{
    if (command.arguments.count>0) {
        //customize argument
        NSString* title = command.arguments[0];
        
//        TestViewController* testViewCtrl = [[TestViewController alloc]init];
//        [self.viewController presentViewController:testViewCtrl animated:YES completion:^{
//            CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"我是OC回传的参数!"];
//            testViewCtrl.labTitle.text = title;
//            [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
//        }];
        
       /* {
        url:"http://rtyuiop?kk=5&jj=9"
        typeKey:"type"
        typeValue:["","","","",""]
        }*/
        
        Y_StockChartViewController *vc = [Y_StockChartViewController new];
        [self.viewController presentViewController:vc animated:vc completion:nil];
        
        NSLog(@"%@",title);
        
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"我是OC回传的参数!"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
        
    }else{
        //callback
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"没有参数"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
}

@end
