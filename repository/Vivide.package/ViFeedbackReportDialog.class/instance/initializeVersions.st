as yet unclassified
initializeVersions

	self versions addAll: (#(Animations Signals Widgets Vivide) collect: [:nm |
		(PackageInfo named: nm) workingCopy ancestry ancestors first name]).