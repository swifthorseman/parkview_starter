#import "PVParkMapViewController.h"
#import "PVMapOptionsViewController.h"

@interface PVParkMapViewController ()

@property (nonatomic, strong) NSMutableArray *selectedOptions;

@end

@implementation PVParkMapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.selectedOptions = [NSMutableArray array];
}

- (void)loadSelectedOptions {
    // To be implemented ...
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PVMapOptionsViewController *optionsViewController = segue.destinationViewController;
    optionsViewController.selectedOptions = self.selectedOptions;
}

- (IBAction)closeOptions:(UIStoryboardSegue *)exitSegue {
    PVMapOptionsViewController *optionsViewController = exitSegue.sourceViewController;
    self.selectedOptions = optionsViewController.selectedOptions;
    [self loadSelectedOptions];
}

- (IBAction)mapTypeChanged:(id)sender {
    // To be implemented ...
}

@end
