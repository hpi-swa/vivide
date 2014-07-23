as yet unclassified
enableChooseDefinition

	self disableChooseDefinition.
	self connect: idBtn signal: #clicked: toSelector: #chooseDefinition.