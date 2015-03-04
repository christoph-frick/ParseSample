TEMPLATE = app

QT += qml quick

SOURCES += main.cpp

RESOURCES += qml.qrc

ios {
  QMAKE_TARGET_BUNDLE_PREFIX = "net.vplay.plugins"
  TARGET = ParseSample

  LIBS += -F$$PWD/ios/

  # Localization files for push messages, only needed if you implement
  # client-side localization like described here:
  # http://plugins.v-play.net/doc/vplayplugins-parse/#localizing-push-messages
  locfile1.files = $$PWD/ios/en.lproj/Localizable.strings
  locfile1.path = de.lproj
  locfile2.files = $$PWD/ios/en.lproj/Localizable.strings
  locfile2.path = en.lproj
  QMAKE_BUNDLE_DATA += locfile1 locfile2
}

# Default rules for deployment.
include(deployment.pri)

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

OTHER_FILES += \
    android/AndroidManifest.xml
