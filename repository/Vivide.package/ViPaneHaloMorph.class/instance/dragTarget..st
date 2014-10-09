drag/drop
dragTarget: event

"	| thePoint |
	thePoint := target point: event position - positionOffset from: owner.
	target setConstrainedPosition: thePoint hangOut: true.
	event hand newMouseFocus: self."