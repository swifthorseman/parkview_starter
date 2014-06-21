#import <UIKit/UIKit.h>

@interface PVParkMapViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *mapTypeSegmentedControl;

- (IBAction)mapTypeChanged:(id)sender;

@end
