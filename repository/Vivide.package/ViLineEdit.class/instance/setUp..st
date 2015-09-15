as yet unclassified
setUp: script

	self lineEdit
		autoAccept: (script valueOfProperty: #autoAccept ifAbsent: [true]);
		helpText: (script valueOfProperty: #help ifAbsent: []);
		deferEditSignalTime: (script valueOfProperty: #defer ifAbsent: [500]). "Makes no sense in combination with auto-accept?"