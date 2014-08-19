as yet unclassified
appVersionString

	^ self appName, ' ', (self appVersion
		ifNil: ['*unknown version*']
		ifNotNil: [:version | version versionString, (version blessing == #development
			ifTrue: [' *dev*']
			ifFalse: [''])])