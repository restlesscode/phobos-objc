//
//
//  PhobosObjcCore.m
//  PhobosObjCCore
//
//  Copyright (c) 2021 Restless Codes Team (https://github.com/restlesscode/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//


#import "PhobosObjcCore.h"
#import "UIImage+PhobosObjcCore.h"

@implementation PhobosObjcCore

///  返回当前 Framework 的bundle
+ (NSBundle *)bundle {
    return [NSBundle bundleForClass:[PhobosObjcCore class]];
}

/// 根据图片名称查找图片
/// @param imageNamed 图片名称
+ (UIImage *)imageNamed:(NSString *)imageNamed {
    UIImage * bundleSourceImage = [UIImage imageNamed:imageNamed inBundle:[PhobosObjcCore bundle] compatibleWithTraitCollection:nil];
    return bundleSourceImage == nil ? [UIImage pbc_makeImageWithColor:[UIColor clearColor]]:bundleSourceImage;
}

/// 当前的图片bundle
+ (nullable NSBundle *)imageBundle {
    NSURL *url = [[PhobosObjcCore bundle] URLForResource:@"PhobosObjcCore" withExtension:@"bundle"];
    NSBundle *imageBundle = [NSBundle bundleWithURL:url];
    return imageBundle;
}

@end





