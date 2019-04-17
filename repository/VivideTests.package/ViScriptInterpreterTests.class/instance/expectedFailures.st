testing
expectedFailures

	^ #(test09UpToDetectReference), (#defaultProperties asScript ifNotNil: [#(test17DefaultPropertiesFallback)] ifNil: [#()])