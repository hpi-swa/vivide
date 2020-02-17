tests - bindings
test03BindActiveScriptOrganizer
	"During script interpretation, the active script organizer should be the one of the step currently interpreted."
	
	| script interpreter |
	script := [:in :out | out add: ViActiveScriptOrganizer value] asScript.
	interpreter := ViScriptInterpreter on: script.
	interpreter upToEnd.
	
	self
		assert: ViActiveScriptOrganizer default ~= interpreter objects first;
		assert: script organization equals: interpreter objects first.