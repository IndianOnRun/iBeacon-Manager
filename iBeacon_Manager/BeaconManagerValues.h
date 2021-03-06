//
//  BeaconStatsViewController.h
//  iBeacon_Manager
//
//  Created by David Crow on 12/27/13.
//  Copyright (c) 2013 David Crow. All rights reserved.
//

//Define all the user defaults keys here

#define kBeaconsEnabled @"ibm-ibeacons-enabled"

#define kTutorialString @"iBeacon Manager\n\nGetting Started:\nHost the attached plist, copy and paste the URL of the hosted file into the \"Load Remote iBeacon Plist\" text field and hit the download button (the cloud with a downward facing arrow).  A simple way to host a file is to store it on dropbox or similar cloud file storage service and use the file's shared download link.\n\nImportant:\nThe sample plist content can be altered for your use case, but it's structure cannot. The UUID, major and minor of the iBeacon regions outlined in the plist must match the UUID, major and minor of the advertising iBeacons for the iBeacon Manager to function properly.\n\nEnjoy"

//Tagging constants
#define kEncounterAnyPreamble @"entryTag"
#define kEncounterSpecificPreamble @"encountered_"
#define kEntryTagPreamble @"entered_"
#define kExitTagPreamble @"exited_"

//Preferences
#define kSoundEnabled @"ua-beaconmanager-apns-sound-enabled"
#define kiBeaconsEnabled @"ua-beaconmanager-ibeacons-enabled"

//Stats contants
#define kLastBroadcastUuidString @"ua-beaconmanager-last-broadcast-uuid"
#define kiBeaconStats @"ua-beaconmanager-ibeacon-stats"
#define kLastEntry @"last-entry"
#define kLastExit @"last-exit"
#define kCumulativeTime @"cumulative-time"
#define kVisits @"visits"

//Beacon Broadcast contstants
#define kLastBroadcastUuidString @"ua-beaconmanager-last-broadcast-uuid"
#define kLastBroadcastMajorString @"ua-beaconmanager-last-broadcast-major"
#define kLastBroadcastMinorString @"ua-beaconmanager-last-broadcast-minor"
#define kMaxRadius 400 //beacon pulse layer UI element max radius

