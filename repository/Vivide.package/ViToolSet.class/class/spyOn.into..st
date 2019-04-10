as yet unclassified
spyOn: work into: folderName

	| directory tally result logName |
	directory := FileDirectory on: (FileDirectory default fullPathFor: folderName).
	directory assureExistence.
	
	tally := MessageTally new.
	tally reportOtherProcesses: true.
	logName := (DateAndTime now asString copyWithoutAll: ':.+ '), '.txt'.
	[result := tally spyEvery: 1 on: work]
		ensure: [FileStream forceNewFileNamed: (directory fullPathFor: logName) do: [:stream |
			tally report: stream]].