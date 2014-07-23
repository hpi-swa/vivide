saving - general
saveTape: aTape

	self properties
		at: #className put: aTape class name;
		at: #headerText put: TimeStamp now asString;
		at: #thumbnail put: (self thumbnailForTape: aTape);
		at: #columns put: (
			aTape columns collect: [:column | | newState |
				newState := self newState.
				column saveState: newState.
				newState]).