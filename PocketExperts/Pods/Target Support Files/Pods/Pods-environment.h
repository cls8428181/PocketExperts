
// To check if a library is compiled with CocoaPods you
// can use the `COCOAPODS` macro definition which is
// defined in the xcconfigs so it is available in
// headers also when they are imported in the client
// project.


// AFNetworking
#define COCOAPODS_POD_AVAILABLE_AFNetworking
#define COCOAPODS_VERSION_MAJOR_AFNetworking 2
#define COCOAPODS_VERSION_MINOR_AFNetworking 5
#define COCOAPODS_VERSION_PATCH_AFNetworking 4

// JSONKit
#define COCOAPODS_POD_AVAILABLE_JSONKit
// This library does not follow semantic-versioning,
// so we were not able to define version macros.
// Please contact the author.
// Version: 1.5pre.

// Reachability
#define COCOAPODS_POD_AVAILABLE_Reachability
#define COCOAPODS_VERSION_MAJOR_Reachability 3
#define COCOAPODS_VERSION_MINOR_Reachability 2
#define COCOAPODS_VERSION_PATCH_Reachability 0

// SDWebImage
#define COCOAPODS_POD_AVAILABLE_SDWebImage
#define COCOAPODS_VERSION_MAJOR_SDWebImage 3
#define COCOAPODS_VERSION_MINOR_SDWebImage 7
#define COCOAPODS_VERSION_PATCH_SDWebImage 2

