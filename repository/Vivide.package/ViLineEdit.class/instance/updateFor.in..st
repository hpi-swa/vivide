as yet unclassified
updateFor: script in: env

	self lineEdit
		autoAccept: (script valueOfProperty: #autoAccept ifAbsent: [true]);
		helpText: (script valueOfProperty: #help ifAbsent: []);
		deferEditSignalTime: (script valueOfProperty: #defer ifAbsent: [500]).
		
	super updateFor: script in: env. 