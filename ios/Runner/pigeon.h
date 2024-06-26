// Autogenerated from Pigeon (v17.3.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import <Foundation/Foundation.h>

@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN

@class Message;

@interface Message : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithSubject:(NSString *)subject
    body:(NSString *)body
    email:(NSString *)email;
@property(nonatomic, copy) NSString * subject;
@property(nonatomic, copy) NSString * body;
@property(nonatomic, copy) NSString * email;
@end

/// The codec used by MessageApi.
NSObject<FlutterMessageCodec> *MessageApiGetCodec(void);

@protocol MessageApi
/// @return `nil` only when `error != nil`.
- (nullable NSArray<Message *> *)getMessagesEmail:(NSString *)email error:(FlutterError *_Nullable *_Nonnull)error;
@end

extern void SetUpMessageApi(id<FlutterBinaryMessenger> binaryMessenger, NSObject<MessageApi> *_Nullable api);

NS_ASSUME_NONNULL_END
