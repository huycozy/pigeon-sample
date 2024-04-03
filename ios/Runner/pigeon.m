// Autogenerated from Pigeon (v17.3.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "pigeon.h"

#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}

static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

@interface Message ()
+ (Message *)fromList:(NSArray *)list;
+ (nullable Message *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PyTorchRect ()
+ (PyTorchRect *)fromList:(NSArray *)list;
+ (nullable PyTorchRect *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@implementation Message
+ (instancetype)makeWithSubject:(NSString *)subject
    body:(NSString *)body
    email:(NSString *)email {
  Message* pigeonResult = [[Message alloc] init];
  pigeonResult.subject = subject;
  pigeonResult.body = body;
  pigeonResult.email = email;
  return pigeonResult;
}
+ (Message *)fromList:(NSArray *)list {
  Message *pigeonResult = [[Message alloc] init];
  pigeonResult.subject = GetNullableObjectAtIndex(list, 0);
  pigeonResult.body = GetNullableObjectAtIndex(list, 1);
  pigeonResult.email = GetNullableObjectAtIndex(list, 2);
  return pigeonResult;
}
+ (nullable Message *)nullableFromList:(NSArray *)list {
  return (list) ? [Message fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    self.subject ?: [NSNull null],
    self.body ?: [NSNull null],
    self.email ?: [NSNull null],
  ];
}
@end

@implementation PyTorchRect
+ (instancetype)makeWithLeft:(double )left
    top:(double )top
    right:(double )right
    bottom:(double )bottom
    width:(double )width
    height:(double )height {
  PyTorchRect* pigeonResult = [[PyTorchRect alloc] init];
  pigeonResult.left = left;
  pigeonResult.top = top;
  pigeonResult.right = right;
  pigeonResult.bottom = bottom;
  pigeonResult.width = width;
  pigeonResult.height = height;
  return pigeonResult;
}
+ (PyTorchRect *)fromList:(NSArray *)list {
  PyTorchRect *pigeonResult = [[PyTorchRect alloc] init];
  pigeonResult.left = [GetNullableObjectAtIndex(list, 0) doubleValue];
  pigeonResult.top = [GetNullableObjectAtIndex(list, 1) doubleValue];
  pigeonResult.right = [GetNullableObjectAtIndex(list, 2) doubleValue];
  pigeonResult.bottom = [GetNullableObjectAtIndex(list, 3) doubleValue];
  pigeonResult.width = [GetNullableObjectAtIndex(list, 4) doubleValue];
  pigeonResult.height = [GetNullableObjectAtIndex(list, 5) doubleValue];
  return pigeonResult;
}
+ (nullable PyTorchRect *)nullableFromList:(NSArray *)list {
  return (list) ? [PyTorchRect fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    @(self.left),
    @(self.top),
    @(self.right),
    @(self.bottom),
    @(self.width),
    @(self.height),
  ];
}
@end

@interface MessageApiCodecReader : FlutterStandardReader
@end
@implementation MessageApiCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [Message fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface MessageApiCodecWriter : FlutterStandardWriter
@end
@implementation MessageApiCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[Message class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface MessageApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation MessageApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[MessageApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[MessageApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *MessageApiGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    MessageApiCodecReaderWriter *readerWriter = [[MessageApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

void SetUpMessageApi(id<FlutterBinaryMessenger> binaryMessenger, NSObject<MessageApi> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.reproduce_issues_pigeon.MessageApi.getMessages"
        binaryMessenger:binaryMessenger
        codec:MessageApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getMessagesEmail:error:)], @"MessageApi api (%@) doesn't respond to @selector(getMessagesEmail:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_email = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        NSArray<Message *> *output = [api getMessagesEmail:arg_email error:&error];
        callback(wrapResult(output, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}
@interface PyTorchApiCodecReader : FlutterStandardReader
@end
@implementation PyTorchApiCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [PyTorchRect fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface PyTorchApiCodecWriter : FlutterStandardWriter
@end
@implementation PyTorchApiCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[PyTorchRect class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface PyTorchApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation PyTorchApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[PyTorchApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[PyTorchApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *PyTorchApiGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    PyTorchApiCodecReaderWriter *readerWriter = [[PyTorchApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

void SetUpPyTorchApi(id<FlutterBinaryMessenger> binaryMessenger, NSObject<PyTorchApi> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.reproduce_issues_pigeon.PyTorchApi.getRects"
        binaryMessenger:binaryMessenger
        codec:PyTorchApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getRectsWithError:)], @"PyTorchApi api (%@) doesn't respond to @selector(getRectsWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSArray<PyTorchRect *> *output = [api getRectsWithError:&error];
        callback(wrapResult(output, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}
