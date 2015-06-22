#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlComponent>
#include <QQmlContext>

#include "parse.hh"

int main(int argc, char *argv[])
{
	QApplication app(argc, argv);
	QQmlApplicationEngine engine;
	Parse parse;
	parse.setChannel("parse-sample");
	QQmlContext * parseIntegrationContext = new QQmlContext(engine.rootContext());
	parseIntegrationContext->setContextProperty("parse", &parse);
	QQmlComponent component(&engine, QUrl(QStringLiteral("qrc:///main.qml")));
	component.create(parseIntegrationContext);
	return app.exec();
}
