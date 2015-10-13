//
//  main.m
//  ViewDer
//
//  Created by Kang on 2015. 10. 13..
//  Copyright © 2015년 Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString* fName = @"/Users/Kang/Documents/ViewDer/ViewDer/signCert.der";  //파일 주소
        NSFileManager* fm;  // 파일 메니져 선언
        NSData *fileData;  // 파일 버퍼
        NSDictionary* attr;
        
        fm = [NSFileManager defaultManager];
        
        fileData = [fm contentsAtPath:fName];
        attr = [fm attributesOfItemAtPath:fName error:NULL];
        
        NSLog(@"%@", fileData);
        NSLog(@"%llu", [[attr objectForKey:NSFileSize] longLongValue]);   // 이후 부분은 필요 없음
        
        
        unsigned char* ptr = (unsigned char*)malloc(sizeof(unsigned char)*1442);
        [fileData getBytes:ptr length:1442];
        
        for(int i = 0; i < 1442; i++)
        {
            printf("(%d)", i);
            printf("%02x ", *ptr);
            
            ptr++;
        }
        printf("\n'");

//        NSRange* fromTo;
//        NSInteger* from;
//        NSInteger* to;
        

    }
    return 0;
}
