 #import "Foo.h"
@import Hoge;

@implementation Foo

- (void)run
{
  NSLog(@"%@ say %@", NSFullUserName(), [Hoge say]);
}

@end
