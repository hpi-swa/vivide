as yet unclassified
label

	^ label ifNil: ['n/a']
"	^ ('^\\((part)|(chapter)|((sub)*section))\{(.*)\}' asRegex
		submatchesIn: content collect: [:m | m last]) ifNotEmpty: [:matches | matches first ] ifEmpty: ['Abstract']"