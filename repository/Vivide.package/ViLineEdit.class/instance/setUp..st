as yet unclassified
setUp: script

	self lineEdit
		autoAccept: (script valueOfProperty: #autoAccept ifAbsent: [true]);
		helpText: (script valueOfProperty: #help ifAbsent: []);
		hideCursor: (script valueOfProperty: #hideCursor ifAbsent: [false]);
		deferEditSignalTime: (script valueOfProperty: #defer ifAbsent: [500]). "Makes no sense in combination with auto-accept?"
		
	(script valueOfProperty: #disguise ifAbsent: [false]) ifTrue: [
		self lineEdit font: (StrikeFont passwordFontSize: 12)].