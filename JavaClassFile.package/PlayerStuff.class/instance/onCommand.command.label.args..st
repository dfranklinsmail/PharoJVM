commands
onCommand: me command: command label: commandLabel args: args
" e.g. from page 74"
	(commandLabel equalsIgnoreCase: 'whoami') ifTrue: [
		(me isKindOf: org bukkit entity Player) ifTrue: [
			me sendMessage: 'Your list name is ', me getPlayerListName.
			me setPlayerWeather: org bukkit WeatherType DOWNFALL. "or CLEAR"
			me sendMessage: 'Your experience points are ',me getExp asString,
				', food is ',me getFoodLevel asString.
			me sendMessage: 'water falls from the sky'.
			^ true
	]].
	^ false