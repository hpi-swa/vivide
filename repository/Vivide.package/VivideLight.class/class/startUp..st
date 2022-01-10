system startup
startUp: resuming

	(FileDirectory default fileOrDirectoryExists: 'vivide.ok')
		ifTrue: [
			self active
				ifNotNil: [#recoverUnsavedScripts openScript]
				ifNil: [(Project current uiManager
						chooseFromLabeledValues: (OrderedDictionary newFrom: {
							'Ignore' -> [].
							'Restore changes' -> [ChangeList browseRecentLog]
						})
						title: 'Squeak was shut down unexpectedly.') value]].
	
	FileStream forceNewFileNamed: 'vivide.ok' do: [:stream | ].