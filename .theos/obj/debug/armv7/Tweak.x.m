#line 1 "Tweak.x"
@interface SBLockScreenViewControllerBase : UIViewController
@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBLockScreenViewControllerBase; 
static void (*_logos_orig$_ungrouped$SBLockScreenViewControllerBase$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewControllerBase* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBLockScreenViewControllerBase$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewControllerBase* _LOGOS_SELF_CONST, SEL); 

#line 4 "Tweak.x"

static void _logos_method$_ungrouped$SBLockScreenViewControllerBase$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewControllerBase* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$SBLockScreenViewControllerBase$viewDidLoad(self, _cmd);

    NSURL *url = [NSURL URLWithString:@"192.168.1.170:8000"];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *data = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        }];
    [data resume];

    UIView *redRectangle = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    [redRectangle setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:redRectangle];
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLockScreenViewControllerBase = objc_getClass("SBLockScreenViewControllerBase"); MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenViewControllerBase, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$SBLockScreenViewControllerBase$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$SBLockScreenViewControllerBase$viewDidLoad);} }
#line 19 "Tweak.x"
