actions - editing
loadPreviousVersion

	self flag: #todo:. "Step versions resp. its properties."
	(ViScriptVersion versionsOfMethod: self object definition referenceInArchive) in: [:versions | 
		| current |
		current := versions first timeStamp.
		(versions allButFirst
			detect: [:v | v timeStamp < current]
			ifNone: []) ifNotNil: [:prev |
				self object definition mergeFromDictionary: prev asDictionary.
				prev fileIn]].