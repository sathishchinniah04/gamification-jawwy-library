#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(GamificationJawwyLibrary, NSObject)

RCT_EXTERN_METHOD(loadGame:(NSString *)msisdn baseUrl:(NSString *)baseUrl subscriptionId:(NSString *)subscriptionId language:(NSString *)language token:(NSString *)token)

+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

@end
