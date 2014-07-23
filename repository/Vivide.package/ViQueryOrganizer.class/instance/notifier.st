accessing
notifier

	^ notifier ifNil: [ViQueryChangeNotifier uniqueInstance]