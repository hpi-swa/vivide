accessing
notifier

	^ notifier ifNil: [ViScriptChangeNotifier uniqueInstance]