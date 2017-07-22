#import <Foundation/Foundation.h>

@interface World: NSObject
- (void)hello;
@end

@implementation World
- (void)hello{
  NSLog(@"hello, world");
}
@end

int main() {
  World *world = [World new];
  [world hello];
}

