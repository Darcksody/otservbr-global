-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages

experienceStages = {
	{
		minlevel = 1,
		maxlevel = 50,
		multiplier = 100 -- 100, 200
	}, {
		minlevel = 51,
		maxlevel = 100,
		multiplier = 50 -- 50, 100
	}, {
		minlevel = 101,
		maxlevel = 150,
		multiplier = 40 -- 40, 80
	}, {
		minlevel = 151,
		maxlevel = 200,
		multiplier = 30 -- 30, 60
	}, {
		minlevel = 201,
		maxlevel = 250,
		multiplier = 20 -- 20, 40
	}, {
		minlevel = 251,
		maxlevel = 300,
		multiplier = 10 -- 10, 20
	}, {
		minlevel = 301,
		maxlevel = 350,
		multiplier = 5 -- 5, 10
	}, {
		minlevel = 351,
		maxlevel = 400,
		multiplier = 4 -- 4, 8
	}, {
		minlevel = 401,
		maxlevel = 450,
		multiplier = 3 -- 3, 6
	}, {
		minlevel = 451,
		maxlevel = 500,
		multiplier = 2 -- 2, 4
	}, {
		minlevel = 501,
		multiplier = 1 -- 1, 2
	}
}

skillsStages = {
	{
		minlevel = 10,
		maxlevel = 20,
		multiplier = 9 --9. 18
	}, {
		minlevel = 21,
		maxlevel = 40,
		multiplier = 6 --6. 12
	}, {
		minlevel = 41,
		maxlevel = 60,
		multiplier = 3 --3. 6
	}, {
		minlevel = 61,
		multiplier = 1 --1. 2
	}
}

magicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 20,
		multiplier = 6 --6. 12
	}, {
		minlevel = 21,
		maxlevel = 40,
		multiplier = 4 --4. 8
	}, {
		minlevel = 41,
		maxlevel = 60,
		multiplier = 2 --2. 4
	}, {
		minlevel = 61,
		multiplier = 1 --1. 2
	}
}