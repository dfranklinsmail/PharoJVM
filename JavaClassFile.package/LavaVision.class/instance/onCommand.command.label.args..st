commands
onCommand: me command: command label: commandLabel args: args
" e.g. from page 85"
	(commandLabel equalsIgnoreCase: 'lavavision') ifTrue: [
		(me isKindOf: org bukkit entity Player) ifTrue: [
			(org bukkit util BlockIterator new: me with: 100) do: [: b |
				me playEffect: b getLocation
					 effect: org bukkit Effect MOBSPAWNER_FLAMES ignore: nil.
				b getType = org bukkit Material AIR ifFalse: [
					b setType: org bukkit Material LAVA.
					me playSound: b getLocation
						 sound: org bukkit Sound ENTITY_ENDERDRAGON_FIREBALL_EXPLODE
						 volume: 1.0 pitch: 0.5.
					^ true
	]]]].
	^ false