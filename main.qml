import QtQuick 2.2
import QtQuick.Window 2.2

import VPlayPlugins.parse 1.0


Window {
  visible: true
  width: 360
  height: 360

  Parse {
    licenseKey: "1802219D9DB5B476BA12870EB3692921CC3A531A4336F19FDCA838BD4F1AD3D55AF0C4FBCAD427B3F5D0C89DAEC7919E6354B9B5E1B9B54032984E027953B0C2B985780760F283C7F0D61D5F9938739B712F1D0081B5DFEA281476F9ED1EF45474368406A06F5AFB101511F8EC4A03092C615A50B4AE0A5346B70D55B3B19ED746E91936E19A6C9F05B7DDA33127EF064FFCBDEDA11A106AE4B73BF60EFC2FEC"

    // Replace with your own Parse app from parse.com
    applicationId: "1sUnvdg9Jb5t4ktSFOm5gLcsk7BiSXVbnKDr3m04"
    clientKey: "KgJcPY0NgCGcRZkBVV7f6XV10f2iZ2zwkEjV5yFC"

    // Subscribe to channel "channel-1"
    channels: [ "channel-1" ]

    onNotificationReceived: {
      console.debug("Received notification with payload:", JSON.stringify(data))

      // Possible actions:
      // - Read message from data payload and display a user dialog
      // - Navigate to a specific screen
      // - ...
    }
  }

}
