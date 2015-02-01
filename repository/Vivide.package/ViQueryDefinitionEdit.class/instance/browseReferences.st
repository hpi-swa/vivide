as yet unclassified
browseReferences

	self inform: 'Deprecated function. Please choose appropriate script for object via pane halo.'
"	ViPane new
		currentQuery: (self definition organization stepById: #refToDef);
		objects: {self definition};
		popUpAt: sendersBtn boundsInWorld bottomLeft."