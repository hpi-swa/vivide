running
setUp

	super setUp.
	
	notifier := ViScriptChangeNotifier new.
	script := [:num | num * num] asScript.
	script organization notifier: notifier.

	events := OrderedCollection new.	
	notifier notify: self using: #addEvent:.