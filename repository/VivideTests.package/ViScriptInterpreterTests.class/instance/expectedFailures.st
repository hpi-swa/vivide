testing
expectedFailures

	^ #(
		test09UpToDetectReference
		test03BindActiveScriptOrganizer
		test04BindActiveScriptOrganizerDouble
	), 
	
	"Is Vivide running and finds a default script right now?"
	(#defaultProperties asScript ifNotNil: [#(test17DefaultPropertiesFallback)] ifNil: [#()])