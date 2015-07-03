as yet unclassified
setUp

	super setUp.
	
	script := [:numbers | numbers select: [:number | number even]] asScript.
	definition := script definition.
	
	organization := script organization.
	organization notifier: ViQueryChangeNotifier new.

	self assert: script organization == definition organization.
	
	script label: 'ViScriptEditorTests'.
	script id: #ViScriptEditorTests.
	definition id: #ViScriptEditorTests.
	
	editor object: script.