as yet unclassified
fullname

	^ fullname ifNil: [
		self raw linesDo: [:line | (line beginsWith: 'FN')
			ifTrue: [^ fullname := ((line copyFrom: (line indexOf: $:) +1 to: line size)
				copyReplaceAll: '=' with: '%') unescapePercents]].
		Error signal: 'Full name not found!']