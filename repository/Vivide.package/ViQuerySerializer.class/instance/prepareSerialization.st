private
prepareSerialization

	steps := IdentitySet new.
	organizer orderedSteps do: [:q | steps addAll: q allSteps].
	
	commands := organizer orderedCommands copy.
	definitions := IdentitySet withAll: (organizer orderedDefinitions
		select: [:def | def isSnippetDefinition not or: [commands anySatisfy: [:cmd |
			cmd definition == def]]]).