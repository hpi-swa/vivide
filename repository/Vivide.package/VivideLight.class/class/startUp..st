system startup
startUp: resuming

	(FileDirectory default fileOrDirectoryExists: 'vivide.ok')
		ifTrue: [
			self active
				ifNotNil: [#recoverUnsavedScripts openScript]
				ifNil: [self inform: 'Squeak was shut down unexpectedly.']].

	FileStream forceNewFileNamed: 'vivide.ok' do: [:stream | ].