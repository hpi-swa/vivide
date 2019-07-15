accessing - script
versions

	 | allVersions uniqueVersions |
	allVersions := ViScriptVersion versionsOfMethod: self thisStep referenceInArchive.
	allVersions size = 1 ifTrue: [^ allVersions].
	
	uniqueVersions := OrderedCollection with: allVersions last.
	(allVersions sorted: [:v1 :v2 | v1 timeStamp < v2 timeStamp])
		overlappingPairsDo: [:v1 :v2 |
			(v2 timeStamp > v1 timeStamp or: [
				v2 timeStamp = v1 timeStamp and: [
					v2 sourceString ~= v1 sourceString]])
						ifTrue: [uniqueVersions addFirst: v2]].
	
	^ uniqueVersions