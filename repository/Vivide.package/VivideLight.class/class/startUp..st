system startup
startUp: resuming

	ViScriptArchive localOrganization: ViQueryOrganizer new.

	(FileDirectory default fileOrDirectoryExists: 'vivide.ok')
		ifTrue: [#recoverUnsavedScripts openScript].

	FileStream forceNewFileNamed: 'vivide.ok' do: [:stream | ].