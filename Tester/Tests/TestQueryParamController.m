/*
 * Tester
 *
 * This file was automatically generated for Stamplay by APIMATIC v2.0 on 08/01/2016
 */
#import <XCTest/XCTest.h>
#import "QueryParamController.h"
#import "TestHelper.h"
#import "TestBaseController.h"

@interface  TestQueryParamController : TestBaseController
//Controller instance for all tests
@property QueryParamController* controller;
@end 


@implementation  TestQueryParamController : TestBaseController

//Setup test class
//This method is called before the invocation of each test method in the test class
- (void)setUp {
    [super setUp];
    self.controller = [[QueryParamController alloc]init];
}

//Teardown test class
//This method is called after the invocation of each test method in the test class
- (void)tearDown {
    [super tearDown];
}	


// Todo Add description for test testSimpleQuery    
-(void) testSimpleQuery {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    BOOL boolean = [NSNumber numberWithBool: [@"true" boolValue]];
    int number = [NSNumber numberWithInteger: [@"4" intValue]];
    NSString* string = @"TestString";
    // Dictionary for optional query parameters
    NSMutableDictionary* queryParamsMutable = [[NSMutableDictionary alloc] init];
    NSDictionary *queryParams= [queryParamsMutable copy];

    // Set callback and perform API call
    [self.controller simpleQueryAsyncWithBoolean: boolean number : number string : string  queryParameters : queryParams  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"passed\":true}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testNoParams    
-(void) testNoParams {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

    // Set callback and perform API call
    [self.controller noParamsWithCompletionBlock:  ^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"passed\":true}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testStringParam    
-(void) testStringParam {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    NSString* string = @"l;asd;asdwe[2304&&;'.d??\\a\\\\\\;sd//";

    // Set callback and perform API call
    [self.controller stringParamAsyncWithString: string  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"passed\":true}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testUrlParam    
-(void) testUrlParam {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    NSString* url = @"https://www.shahidisawesome.com/and/also/a/narcissist?thisis=aparameter&another=one";

    // Set callback and perform API call
    [self.controller urlParamAsyncWithUrl: url  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"passed\":true}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testMultipleParams    
-(void) testMultipleParams {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    int number = [NSNumber numberWithInteger: [@"123412312" intValue]];
    double precision = [NSNumber numberWithDouble: [@"1112.34" doubleValue]];
    NSString* string = @"\"\"test./;\";12&&3asl\"\";\"qw1&34\"///..//.";
    NSString* url = @"http://www.abc.com/test?a=b&c=\"http://lolol.com?param=no&another=lol\"";

    // Set callback and perform API call
    [self.controller multipleParamsAsyncWithNumber: number precision : precision string : string url : url  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"passed\":true}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testNumberArray    
-(void) testNumberArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    NSArray* integers = (NSArray*) [APIHelper jsonDeserializeArray: @"[1,2,3,4,5]"];

    // Set callback and perform API call
    [self.controller numberArrayAsyncWithIntegers: integers  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
       // Test response code
        XCTAssertTrue(context.response.statusCode >= 200 && 
                context.response.statusCode <= 208);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"passed\":true}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testStringArray    
-(void) testStringArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    NSArray* strings = (NSArray*) [APIHelper jsonDeserializeArray: @"[\"abc\", \"def\"]"];

    // Set callback and perform API call
    [self.controller stringArrayAsyncWithStrings: strings  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"passed\":true}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testStringEnumArray    
-(void) testStringEnumArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    NSArray<NSNumber*>* days = [DaysHelper daysArrayFromStringArray:
                [APIHelper jsonDeserializeArray: @"[\"Tuesday\", \"Saturday\", \"Wednesday\", \"Monday\", \"Sunday\"]"]];

    // Set callback and perform API call
    [self.controller stringEnumArrayAsyncWithDays: days  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"passed\":true}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testIntegerEnumArray    
-(void) testIntegerEnumArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    NSArray<NSNumber*>* suites =  (NSArray<NSNumber*>*) [APIHelper jsonDeserializeArray: @"[1, 3, 4, 2, 3]"];

    // Set callback and perform API call
    [self.controller integerEnumArrayAsyncWithSuites: suites  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"passed\":true}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}



@end
