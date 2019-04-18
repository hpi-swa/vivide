tests - bindings
test04BindActiveScriptOrganizerDouble
	
	| script interpreter organization |
	script := [:in :out | 
		self assert: ViActiveScriptOrganizer value ~= ViActiveScriptOrganizer default.
		out add: ViActiveScriptOrganizer value] asScript.
	
	organization := ViScriptOrganizer new.
	self assert: organization ~= script organization.
	
	"Try to bind the active organizer from the outside to a different one."
	ViActiveScriptOrganizer
		value: organization
		during: [
			interpreter := ViScriptInterpreter on: script.
			interpreter upToEnd].
	
	"Any outer value for active organizer will be overridden by the interpreter."
	self assert: script organization equals: interpreter objects first.