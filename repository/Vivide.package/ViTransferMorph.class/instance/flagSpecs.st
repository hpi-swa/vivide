as yet unclassified
flagSpecs
	"#( ($a 'Accept changes' #accept) ($e 'Evaluate object' #evaluate) )
	Stores keystroke modifiers for drag operations: key char, descriptive string, unique flag symbol"
	
	^ flagSpecs ifNil: [#(
		($e 'Evaluate' #evaluate)
		($s 'Script' #script)
		)]