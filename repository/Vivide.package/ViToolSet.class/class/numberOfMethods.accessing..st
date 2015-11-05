as yet unclassified
numberOfMethods: someMethods accessing: instVarName

	^ (self
		selectFromMethods: someMethods
		thatAccess: instVarName) size