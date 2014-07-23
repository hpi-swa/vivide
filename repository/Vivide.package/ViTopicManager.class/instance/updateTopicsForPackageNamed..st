as yet unclassified
updateTopicsForPackageNamed: aPackageName

	| d |
	d := Dictionary new.

	((PackageInfo named: aPackageName) methods
		 reject: [:m | m classSymbol includesSubstring: 'icon' caseSensitive: false])
		 do: [:m |
			(self topicsForMethod: m) keysAndValuesDo: [:key :value |
				d at: key put: (d at: key ifAbsentPut: [0]) + value].
	
	
	] displayingProgress: [:m | m asString].
	
	topics at: aPackageName put: d. 