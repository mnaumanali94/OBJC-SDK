//
//  QueryParamController.h
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 08/02/2016
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"
#import "ServerResponse.h"
#import "Days.h"
#import "DaysHelper.h"
#import "SuiteCode.h"
#import "SuiteCodeHelper.h"

@interface QueryParamController : BaseController

/**
* Completion block definition for asynchronous call to SimpleQuery */
typedef void (^CompletedGetSimpleQuery)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    boolean    Required parameter: Example: 
* @param    number    Required parameter: Example: 
* @param    string    Required parameter: Example: 
* @param    queryParameters    Additional optional query parameters are supported by this endpoint
*/
- (void) simpleQueryAsyncWithBoolean:(BOOL) boolean
                number:(int) number
                string:(NSString*) string
                queryParameters:(NSDictionary*) queryParameters
                completionBlock:(CompletedGetSimpleQuery) onCompleted;

/**
* Completion block definition for asynchronous call to NoParams */
typedef void (^CompletedGetNoParams)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) noParamsWithCompletionBlock:(CompletedGetNoParams) onCompleted;

/**
* Completion block definition for asynchronous call to StringParam */
typedef void (^CompletedGetStringParam)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    string    Required parameter: Example: 
*/
- (void) stringParamAsyncWithString:(NSString*) string
                completionBlock:(CompletedGetStringParam) onCompleted;

/**
* Completion block definition for asynchronous call to UrlParam */
typedef void (^CompletedGetUrlParam)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    url    Required parameter: Example: 
*/
- (void) urlParamAsyncWithUrl:(NSString*) url
                completionBlock:(CompletedGetUrlParam) onCompleted;

/**
* Completion block definition for asynchronous call to MultipleParams */
typedef void (^CompletedGetMultipleParams)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    number    Required parameter: Example: 
* @param    precision    Required parameter: Example: 
* @param    string    Required parameter: Example: 
* @param    url    Required parameter: Example: 
*/
- (void) multipleParamsAsyncWithNumber:(int) number
                precision:(double) precision
                string:(NSString*) string
                url:(NSString*) url
                completionBlock:(CompletedGetMultipleParams) onCompleted;

/**
* Completion block definition for asynchronous call to Number Array */
typedef void (^CompletedGetNumberArray)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    integers    Required parameter: Example: 
*/
- (void) numberArrayAsyncWithIntegers:(NSArray*) integers
                completionBlock:(CompletedGetNumberArray) onCompleted;

/**
* Completion block definition for asynchronous call to String Array */
typedef void (^CompletedGetStringArray)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    strings    Required parameter: Example: 
*/
- (void) stringArrayAsyncWithStrings:(NSArray*) strings
                completionBlock:(CompletedGetStringArray) onCompleted;

/**
* Completion block definition for asynchronous call to String Enum Array */
typedef void (^CompletedGetStringEnumArray)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    days    Required parameter: Example: 
*/
- (void) stringEnumArrayAsyncWithDays:(NSArray<NSNumber*>*) days
                completionBlock:(CompletedGetStringEnumArray) onCompleted;

/**
* Completion block definition for asynchronous call to Integer Enum Array */
typedef void (^CompletedGetIntegerEnumArray)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    suites    Required parameter: Example: 
*/
- (void) integerEnumArrayAsyncWithSuites:(NSArray<NSNumber*>*) suites
                completionBlock:(CompletedGetIntegerEnumArray) onCompleted;

@end