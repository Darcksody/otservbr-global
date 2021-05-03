-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages

experienceStages = {
	{
		minlevel = 1,
		multiplier = 4 -- 2, 4
	}
}

skillsStages = {
	{
		minlevel = 10,
		maxlevel = 20,
		multiplier = 18 --9. 18
	}, {
		minlevel = 21,
		maxlevel = 40,
		multiplier = 12 --6. 12
	}, {
		minlevel = 41,
		maxlevel = 60,
		multiplier = 6 --3. 6
	}, {
		minlevel = 61,
		multiplier = 2 --1. 2
	}
}

magicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 20,
		multiplier = 12 --6. 12
	}, {
		minlevel = 21,
		maxlevel = 40,
		multiplier = 8 --4. 8
	}, {
		minlevel = 41,
		maxlevel = 60,
		multiplier = 4 --2. 4
	}, {
		minlevel = 61,
		multiplier = 2 --1. 2
	}
}