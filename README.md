ParseSample
===========

Sample project for V-Play Qt 5 Parse Push Notifications Plugin

This sample shows how to integrate push notifications into your Qt 5 app or game and subscribe to specific channels.

It also demonstrates how to use client-side localized push notification texts like described here:http://plugins.v-play.net/doc/vplayplugins-parse/#localizing-push-messages

Instructions
------------

- Install the Parse plugin as described here: http://plugins.v-play.net/doc/plugin-installation/#downloading-v-play-plugins

- Create a Parse account, create a new app and add your `applicationId` & `clientKey` in the `main.qml` file

- Open `ParseSample.pro` in Qt Creator and configure the project for an iOS or Android target

- Run the project and send test push notifications from the Parse dashboard

- **Note for iOS Users**: In order to receive push notifications on iOS you need to create valid certificates & a provisioning profile at developer.apple.com/ios and upload it to Parse. For more information have a look at https://parse.com/tutorials/ios-push-notifications

Please also have a look at http://plugins.v-play.net/doc/vplayplugins-parse/ on how to integrate the plugin into your own Qt 5 apps.
