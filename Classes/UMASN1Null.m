//
//  UMASN1Null.m
//  MessageMover
//
//  Created by Andreas Fink on 03.07.14.
//
//

#import "UMASN1Null.h"

@implementation UMASN1Null

- (UMASN1Null *)init
{
    self = [super init];
    if(self)
    {
        asn1_tag.tagClass = UMASN1Class_Universal;
        [asn1_tag setTagIsPrimitive];
        asn1_tag.tagNumber = UMASN1Primitive_null;
        self.asn1_data = [NSData data];
    }
    return self;
}

- (void)processBeforeEncode
{
    [super processBeforeEncode];
//    asn1_tag.tagClass = UMASN1Class_Universal;
//    asn1_tag.tagNumber = UMASN1Primitive_null;
}

- (NSString *)objectName
{
    return @"NULL";
}


- (id) objectValue
{
    return [NSNull null];
}

+ (uint64_t)classTagNumber
{
    return UMASN1Primitive_null;
}

+ (BOOL)tagMatches:(uint64_t)tag
{
    return tag == UMASN1Primitive_null;
}

+ (BOOL)tagMatch:(UMASN1Tag *)t
{
    if((t.tagClass == UMASN1Class_Universal) && (t.tagNumber = UMASN1Primitive_null))
    {
        return YES;
    }
    return NO;
}

@end
