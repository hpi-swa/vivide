actions - editing
loadPreviousVersion

	(ViScriptVersion versionsOfMethod: self thisStep referenceInArchive) in: [:versions | 
		| current |
		current := versions first.
		(versions allButFirst
			detect: [:v | v timeStamp < current timeStamp or: [v timeStamp = current timeStamp and: [v sourceString ~= current sourceString]]]
			ifNone: []) ifNotNil: [:prev |
				self thisStep converter
					into: self thisStep organization
					during: [:converter | converter importStep: prev asDictionary].
				prev fileIn "To be compatible with Squeak's versioning."]].