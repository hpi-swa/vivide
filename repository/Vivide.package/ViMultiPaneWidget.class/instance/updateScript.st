as yet unclassified
updateScript

	| paneSpecs scripts |
	(self currentQuery valueOfProperty: #locked ifAbsent: [false])
		ifTrue: [^ self currentQuery].   
	
	self setProperty: #isUpdatingScript toValue: true.   

	paneSpecs := self panes collect: [:pane | pane asDictionary].

	scripts := (ViScriptPart
		convertPanes: paneSpecs
		toScript: (self currentQuery ifNil: [ViScriptPart new]))
			steps.   
			
	"Ensure same tool-local organization."
	scripts first notifier doSilently: [  
		scripts do: [:script | script adoptOrganization: self organizer].
		scripts first setProperty: #optimalExtent toValue: self extent].
	
	self currentQuery ifNil: [self currentQuery: scripts first].

	self removeProperty: #isUpdatingScript.

	^ scripts first