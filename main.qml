import QtQuick 2.2
import QtQuick.Window 2.2

import VPlayPlugins.parse 1.0


Window {
  visible: true
  width: 360
  height: 360

  Parse {
    licenseKey: "1802219D9DB5B476BA12870EB3692921CF8F51009303CD091C54CAE8FB75266744F0903190C1645BF5EF5BCE6FDCAFA4BFFB388539A557EB6E02E0E8B0C4AD0E94A1FF80B56F577E4CFA9785CA3B97359A0646B65AD510425377A94FD104A7E62D4F2417C60AE77152331FACFBEE0DAD57D39D948AD94D8A7AA8D064594D167F2C1ED80450248E441E231BED59E19782988A68BE40DEA9510D2EC40E82DF4804"

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
