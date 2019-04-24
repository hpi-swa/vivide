testing
expectedFailures

	^ #(test09UpToDetectReference), 
	"Is Vivide running and finds a default script right now?"
	(#defaultProperties asScript ifNotNil: [#(test17DefaultPropertiesFallback)] ifNil: [#()])