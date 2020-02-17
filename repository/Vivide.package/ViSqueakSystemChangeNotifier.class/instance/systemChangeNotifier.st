accessing
systemChangeNotifier

	^ systemChangeNotifier ifNil: [SystemChangeNotifier uniqueInstance]