import QtQuick 2.2
import VPlayPlugins.parse 1.0

Parse {
	licenseKey: parse.licenseKey;
	applicationId: parse.applicationId
	clientKey: parse.clientKey
	channels: parse.channels
	onNotificationReceived: {
		console.debug("Received notification with payload:", JSON.stringify(data))
		parse.onNotificationReceived(JSON.stringify(data))
	}
}
