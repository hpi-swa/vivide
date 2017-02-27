as yet unclassified
setUp: script

	super setUp: script.
	
	showLabel := script valueOfProperty: #showLabel ifAbsent: [true].
	labelHeight := script valueOfProperty: #labelHeight ifAbsent: [50].