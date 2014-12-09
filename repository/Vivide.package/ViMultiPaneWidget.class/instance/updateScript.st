as yet unclassified
updateScript

	| paneSpecs scripts |
	self setProperty: #isUpdatingScript toValue: true.   

	paneSpecs := self panes collect: [:pane | pane asDictionary].

	scripts := (ViScriptPart
		convertPanes: paneSpecs
		toScript: (self currentQuery ifNil: [ViScriptPart new]))
			steps.   
			
	"Ensure same tool-local organization."
	scripts do: [:script | script adoptOrganization: self organizer].
	
	self currentQuery: scripts first.

	self removeProperty: #isUpdatingScript.

	^ scripts first