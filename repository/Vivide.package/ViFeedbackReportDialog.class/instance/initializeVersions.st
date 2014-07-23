as yet unclassified
initializeVersions

	self versions addAll: (#(Animations Signals Widgets 'Sight-Coverage' 'Sight-Callgraph' Icons Fonts Vivide) collect: [:nm |
		(PackageInfo named: nm) workingCopy ancestry ancestors first name]).