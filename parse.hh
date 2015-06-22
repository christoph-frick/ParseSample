#ifndef PARSE_HH
#define PARSE_HH

#include <QObject>
#include <QStringList>
#include <QMessageBox>
#include "app.hh"

class Parse : public QObject
{
	Q_OBJECT

	Q_PROPERTY(QString licenseKey READ licenseKey CONSTANT)
	Q_PROPERTY(QString applicationId READ applicationId CONSTANT)
	Q_PROPERTY(QString clientKey READ clientKey CONSTANT)
	Q_PROPERTY(QStringList channels READ channels NOTIFY channelsChanged)

private:

	const QString licenseKey_ = VPLAY_PLUGIN_PARSE_LICENSEKEY;
	const QString applicationId_ = VPLAY_PLUGIN_PARSE_APPLICATIONID;
	const QString clientKey_ = VPLAY_PLUGIN_PARSE_CLIENTKEY;
	QStringList channels_;

public:
	Parse();
	~Parse();

	const QString licenseKey() const { return licenseKey_; }
	const QString applicationId() const { return applicationId_; }
	const QString clientKey() const { return clientKey_; }

	QStringList channels() const { return channels_; }
	void setChannel(const QString& c) {
		if (!channels_.contains(c)) {
			channels_.clear();
			if (c.length()) {
				channels_ << c;
			}
			emit channelsChanged(channels_);
		}
	}

public slots:

	void onNotificationReceived(const QString& json) {
		QMessageBox::critical(nullptr, "Push from Parse", json);
		emit receivedJSON(json);
	}

signals:
	void channelsChanged(const QStringList&);
	void receivedJSON(const QString &);
};

#endif // PARSE_HH
