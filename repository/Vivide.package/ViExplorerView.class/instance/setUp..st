as yet unclassified
setUp: script

	super setUp: script.
	self container editVisible: (script valueOfProperty: #editable ifAbsent: [false]).