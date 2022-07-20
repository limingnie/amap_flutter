// Autogenerated from Pigeon (v3.2.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import "GeneratedAMapSearchApis.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSDictionary<NSString *, id> *wrapResult(id result, FlutterError *error) {
  NSDictionary *errorDict = (NSDictionary *)[NSNull null];
  if (error) {
    errorDict = @{
        @"code": (error.code ?: [NSNull null]),
        @"message": (error.message ?: [NSNull null]),
        @"details": (error.details ?: [NSNull null]),
        };
  }
  return @{
      @"result": (result ?: [NSNull null]),
      @"error": errorDict,
      };
}
static id GetNullableObject(NSDictionary* dict, id key) {
  id result = dict[key];
  return (result == [NSNull null]) ? nil : result;
}
static id GetNullableObjectAtIndex(NSArray* array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}


@interface AmapQueryPoiResult ()
+ (AmapQueryPoiResult *)fromMap:(NSDictionary *)dict;
+ (nullable AmapQueryPoiResult *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end

@implementation AmapQueryPoiResult
+ (instancetype)makeWithResult:(nullable NSDictionary<NSString *, id> *)result
    code:(NSNumber *)code {
  AmapQueryPoiResult* pigeonResult = [[AmapQueryPoiResult alloc] init];
  pigeonResult.result = result;
  pigeonResult.code = code;
  return pigeonResult;
}
+ (AmapQueryPoiResult *)fromMap:(NSDictionary *)dict {
  AmapQueryPoiResult *pigeonResult = [[AmapQueryPoiResult alloc] init];
  pigeonResult.result = GetNullableObject(dict, @"result");
  pigeonResult.code = GetNullableObject(dict, @"code");
  NSAssert(pigeonResult.code != nil, @"");
  return pigeonResult;
}
+ (nullable AmapQueryPoiResult *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [AmapQueryPoiResult fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"result" : (self.result ?: [NSNull null]),
    @"code" : (self.code ?: [NSNull null]),
  };
}
@end

@interface AmapSearchHostApiCodecReader : FlutterStandardReader
@end
@implementation AmapSearchHostApiCodecReader
- (nullable id)readValueOfType:(UInt8)type 
{
  switch (type) {
    case 128:     
      return [AmapQueryPoiResult fromMap:[self readValue]];
    
    default:    
      return [super readValueOfType:type];
    
  }
}
@end

@interface AmapSearchHostApiCodecWriter : FlutterStandardWriter
@end
@implementation AmapSearchHostApiCodecWriter
- (void)writeValue:(id)value 
{
  if ([value isKindOfClass:[AmapQueryPoiResult class]]) {
    [self writeByte:128];
    [self writeValue:[value toMap]];
  } else 
{
    [super writeValue:value];
  }
}
@end

@interface AmapSearchHostApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation AmapSearchHostApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[AmapSearchHostApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[AmapSearchHostApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *AmapSearchHostApiGetCodec() {
  static dispatch_once_t sPred = 0;
  static FlutterStandardMessageCodec *sSharedObject = nil;
  dispatch_once(&sPred, ^{
    AmapSearchHostApiCodecReaderWriter *readerWriter = [[AmapSearchHostApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}


void AmapSearchHostApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<AmapSearchHostApi> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.SearchHostApi.getPlatformVersion"
        binaryMessenger:binaryMessenger
        codec:AmapSearchHostApiGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getPlatformVersionWithError:)], @"AmapSearchHostApi api (%@) doesn't respond to @selector(getPlatformVersionWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSString *output = [api getPlatformVersionWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.SearchHostApi.setApiKey"
        binaryMessenger:binaryMessenger
        codec:AmapSearchHostApiGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setApiKeyApiKey:error:)], @"AmapSearchHostApi api (%@) doesn't respond to @selector(setApiKeyApiKey:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_apiKey = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setApiKeyApiKey:arg_apiKey error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.SearchHostApi.updatePrivacyShow"
        binaryMessenger:binaryMessenger
        codec:AmapSearchHostApiGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(updatePrivacyShowIsContains:isShow:error:)], @"AmapSearchHostApi api (%@) doesn't respond to @selector(updatePrivacyShowIsContains:isShow:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_isContains = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_isShow = GetNullableObjectAtIndex(args, 1);
        FlutterError *error;
        [api updatePrivacyShowIsContains:arg_isContains isShow:arg_isShow error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.SearchHostApi.updatePrivacyAgree"
        binaryMessenger:binaryMessenger
        codec:AmapSearchHostApiGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(updatePrivacyAgreeIsAgree:error:)], @"AmapSearchHostApi api (%@) doesn't respond to @selector(updatePrivacyAgreeIsAgree:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_isAgree = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api updatePrivacyAgreeIsAgree:arg_isAgree error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.SearchHostApi.queryPoi"
        binaryMessenger:binaryMessenger
        codec:AmapSearchHostApiGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(queryPoiWithCompletion:)], @"AmapSearchHostApi api (%@) doesn't respond to @selector(queryPoiWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api queryPoiWithCompletion:^(AmapQueryPoiResult *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
}
