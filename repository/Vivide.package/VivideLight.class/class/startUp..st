system startup
startUp: resuming

	(FileDirectory default fileOrDirectoryExists: 'vivide.ok')
		ifTrue: [#recoverUnsavedScripts openScript].

	FileStream forceNewFileNamed: 'vivide.ok' do: [:stream | ].