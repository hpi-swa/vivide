add/remove
addObject: anObject asBookmarkLabeled: aLabel

	| state |
	state := ViEditorState new.
	self flag: #ugly. "mt: Dirty trick to encapsulate single objects in editor state."
	state properties
		at: #object put: anObject;
		at: #headerText put: (aLabel ifEmpty: [ViLabelService doObject: anObject]).
	self bookmarks add: state.