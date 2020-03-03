as yet unclassified
flagSpecs
	"#( ($a 'Accept changes' #accept) ($e 'Evaluate object' #evaluate) )
	Stores keystroke modifiers for drag operations: key char, descriptive string, unique flag symbol"
	
	^ flagSpecs ifNil: [#(
		($e 'Evaluate' #evaluate)
		($i 'Inspect' #inspect)
		($c 'Collect' #collect)
		($s 'Script' #script)
		($u 'Use' #use)
		)]