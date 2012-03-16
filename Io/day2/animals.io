Object ancestors := method(
	prototype := self proto
	if(prototype != Object,
	writeln("Slots of ", prototype type)
	prototype slotNames foreach(slotName, slotName println)
	writeln
	prototype ancestors)
)

Animal := Object clone
Animal speak := method("Ambiguous animal noise" println)

Duck := Animal clone
Duck speak := method("Quack!" println)
Duck walk := method("Waddle" println)

disco := Duck clone
disco ancestors