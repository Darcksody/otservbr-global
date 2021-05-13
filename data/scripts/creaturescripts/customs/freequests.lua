local questTable = {
[1] = {storageId = Storage.BigfootBurden.QuestLine, storageValue = 2},
[2] = {storageId = Storage.BigfootBurden.QuestLine, storageValue = 4},
[3] = {storageId = Storage.BigfootBurden.QuestLine, storageValue = 7},
[4] = {storageId = Storage.BigfootBurden.QuestLine, storageValue = 9},
[5] = {storageId = Storage.BigfootBurden.QuestLine, storageValue = 12},
[6] = {storageId = Storage.BigfootBurden.Shooting, storageValue = 5},
[7] = {storageId = Storage.BigfootBurden.QuestLine, storageValue = 16},
[8] = {storageId = Storage.BigfootBurden.QuestLine, storageValue = 20},
[9] = {storageId = Storage.BigfootBurden.QuestLine, storageValue = 23},
[10] = {storageId = Storage.BigfootBurden.QuestLineComplete, storageValue = 2},
[11] = {storageId = Storage.BigfootBurden.Rank, storageValue = 999999},
[12] = {storageId = Storage.BigfootBurden.Warzone1Access, storageValue = 2},
[13] = {storageId = Storage.BigfootBurden.Warzone2Access, storageValue = 2},
[14] = {storageId = Storage.BigfootBurden.Warzone3Access, storageValue = 2},
[15] = {storageId = Storage.DangerousDepths.Questline, storageValue = 10},
[16] = {storageId = Storage.DangerousDepths.Access.LavaPumpWarzoneVI, storageValue = 10},
[17] = {storageId = Storage.DangerousDepths.Access.LavaPumpWarzoneV, storageValue = 10},
[18] = {storageId = Storage.DangerousDepths.Access.LavaPumpWarzoneIV, storageValue = 30},
[19] = {storageId = Storage.DangerousDepths.Dwarves.Status, storageValue = 10},
[20] = {storageId = Storage.DangerousDepths.Scouts.Status, storageValue = 10},
[21] = {storageId = Storage.DangerousDepths.Gnomes.Status, storageValue = 10},
[22] = {storageId = Storage.InServiceofYalahar.Questline, storageValue = 51},
[23] = {storageId = Storage.InServiceofYalahar.Mission01, storageValue = 6},
[24] = {storageId = Storage.InServiceofYalahar.Mission02, storageValue = 8},
[25] = {storageId = Storage.InServiceofYalahar.Mission03, storageValue = 6},
[26] = {storageId = Storage.InServiceofYalahar.Mission04, storageValue = 6},
[27] = {storageId = Storage.InServiceofYalahar.Mission05, storageValue = 8},
[28] = {storageId = Storage.InServiceofYalahar.Mission06, storageValue = 5},
[29] = {storageId = Storage.InServiceofYalahar.Mission07, storageValue = 5},
[30] = {storageId = Storage.InServiceofYalahar.Mission08, storageValue = 4},
[31] = {storageId = Storage.InServiceofYalahar.Mission09, storageValue = 2},
[32] = {storageId = Storage.InServiceofYalahar.Mission10, storageValue = 1},
[33] = {storageId = Storage.InServiceofYalahar.SewerPipe01, storageValue = 1},
[34] = {storageId = Storage.InServiceofYalahar.SewerPipe02, storageValue = 1},
[35] = {storageId = Storage.InServiceofYalahar.SewerPipe03, storageValue = 1},
[36] = {storageId = Storage.InServiceofYalahar.SewerPipe04, storageValue = 1},
[37] = {storageId = Storage.InServiceofYalahar.DiseasedDan, storageValue = 1},
[38] = {storageId = Storage.InServiceofYalahar.DiseasedBill, storageValue = 1},
[39] = {storageId = Storage.InServiceofYalahar.DiseasedFred, storageValue = 1},
[40] = {storageId = Storage.InServiceofYalahar.AlchemistFormula, storageValue = 1},
[41] = {storageId = Storage.InServiceofYalahar.BadSide, storageValue = 1},
[42] = {storageId = Storage.InServiceofYalahar.GoodSide , storageValue = 1},
[43] = {storageId = Storage.InServiceofYalahar.MrWestDoor, storageValue = 1},
[44] = {storageId = Storage.InServiceofYalahar.MrWestStatus, storageValue = 1},
[45] = {storageId = Storage.InServiceofYalahar.TamerinStatus, storageValue = 1},
[46] = {storageId = Storage.InServiceofYalahar.MorikSummon, storageValue = 1},
[47] = {storageId = Storage.InServiceofYalahar.QuaraState, storageValue = 1},
[48] = {storageId = Storage.InServiceofYalahar.QuaraSplasher, storageValue = 1},
[49] = {storageId = Storage.InServiceofYalahar.QuaraSharptooth, storageValue = 1},
[50] = {storageId = Storage.InServiceofYalahar.QuaraInky, storageValue = 1},
[51] = {storageId = Storage.InServiceofYalahar.MatrixState, storageValue = 1},
[52] = {storageId = Storage.InServiceofYalahar.NotesPalimuth, storageValue = 1},
[53] = {storageId = Storage.InServiceofYalahar.NotesAzerus, storageValue = 1},
[54] = {storageId = Storage.InServiceofYalahar.DoorToAzerus, storageValue = 1},
[55] = {storageId = Storage.InServiceofYalahar.DoorToBog, storageValue = 1},
[56] = {storageId = Storage.InServiceofYalahar.DoorToLastFight, storageValue = 1},
[57] = {storageId = Storage.InServiceofYalahar.DoorToMatrix, storageValue = 1},
[58] = {storageId = Storage.InServiceofYalahar.DoorToQuara, storageValue = 1},
[59] = {storageId = Storage.InServiceofYalahar.SewerPipe01, storageValue = 1},
[60] = {storageId = Storage.InServiceofYalahar.SewerPipe02, storageValue = 1},
[61] = {storageId = Storage.InServiceofYalahar.SewerPipe03, storageValue = 1},
[62] = {storageId = Storage.InServiceofYalahar.SewerPipe04, storageValue = 1},
[63] = {storageId = Storage.InServiceofYalahar.DiseasedDan, storageValue = 1},
[64] = {storageId = Storage.InServiceofYalahar.DiseasedBill, storageValue = 1},
[65] = {storageId = Storage.InServiceofYalahar.DiseasedFred, storageValue = 1},
[66] = {storageId = Storage.InServiceofYalahar.AlchemistFormula, storageValue = 1},
[67] = {storageId = Storage.InServiceofYalahar.BadSide, storageValue = 1},
[68] = {storageId = Storage.InServiceofYalahar.GoodSide, storageValue = 1},
[69] = {storageId = Storage.InServiceofYalahar.MrWestDoor, storageValue = 1},
[70] = {storageId = Storage.InServiceofYalahar.MrWestStatus, storageValue = 1},
[71] = {storageId = Storage.InServiceofYalahar.TamerinStatus, storageValue = 1},
[72] = {storageId = Storage.InServiceofYalahar.MorikSummon, storageValue = 1},
[73] = {storageId = Storage.InServiceofYalahar.QuaraState, storageValue = 1},
[74] = {storageId = Storage.InServiceofYalahar.QuaraSplasher, storageValue = 1},
[75] = {storageId = Storage.InServiceofYalahar.QuaraSharptooth, storageValue = 1},
[76] = {storageId = Storage.InServiceofYalahar.QuaraInky, storageValue = 1},	
[77] = {storageId = Storage.CultsOfTibia.Questline, storageValue = 7},
[78] = {storageId = Storage.CultsOfTibia.Minotaurs.jamesfrancisTask, storageValue = 1},
[79] = {storageId = Storage.CultsOfTibia.Minotaurs.Mission, storageValue = 1},
[80] = {storageId = Storage.CultsOfTibia.Minotaurs.bossTimer, storageValue = 1},
[81] = {storageId = Storage.CultsOfTibia.MotA.Mission, storageValue = 1},
[82] = {storageId = Storage.CultsOfTibia.MotA.Pedra1, storageValue = 1},
[83] = {storageId = Storage.CultsOfTibia.MotA.Pedra2, storageValue = 1},
[84] = {storageId = Storage.CultsOfTibia.MotA.Pedra3, storageValue = 1},
[85] = {storageId = Storage.CultsOfTibia.MotA.Respostas, storageValue = 1},
[86] = {storageId = Storage.CultsOfTibia.MotA.Perguntaid, storageValue = 1},
[87] = {storageId = Storage.CultsOfTibia.Barkless.Mission, storageValue = 1},
[88] = {storageId = Storage.CultsOfTibia.Barkless.sulphur, storageValue = 1},
[89] = {storageId = Storage.CultsOfTibia.Barkless.tar, storageValue = 1},
[90] = {storageId = Storage.CultsOfTibia.Barkless.ice, storageValue = 1},
[91] = {storageId = Storage.CultsOfTibia.Barkless.Objects, storageValue = 1},
[92] = {storageId = Storage.CultsOfTibia.Barkless.Temp, storageValue = 1},
[93] = {storageId = Storage.CultsOfTibia.Barkless.bossTimer, storageValue = 1},
[94] = {storageId = Storage.CultsOfTibia.Orcs.Mission, storageValue = 1},
[95] = {storageId = Storage.CultsOfTibia.Orcs.lookType, storageValue = 1},
[96] = {storageId = Storage.CultsOfTibia.Orcs.bossTimer, storageValue = 1},
[97] = {storageId = Storage.CultsOfTibia.Life.Mission, storageValue = 1},
[98] = {storageId = Storage.CultsOfTibia.Life.bossTimer, storageValue = 1},
[99] = {storageId = Storage.CultsOfTibia.Humans.Mission, storageValue = 1},
[100] = {storageId = Storage.CultsOfTibia.Humans.Vaporized, storageValue = 1},
[101] = {storageId = Storage.CultsOfTibia.Humans.Decaying, storageValue = 1},
[102] = {storageId = Storage.CultsOfTibia.Humans.bossTimer, storageValue = 1},
[103] = {storageId = Storage.CultsOfTibia.Misguided.Mission, storageValue = 1},
[104] = {storageId = Storage.CultsOfTibia.Misguided.Monsters, storageValue = 1},
[105] = {storageId = Storage.CultsOfTibia.Misguided.Exorcisms, storageValue = 1},
[106] = {storageId = Storage.CultsOfTibia.Misguided.Time, storageValue = 1},
[107] = {storageId = Storage.CultsOfTibia.Misguided.bossTimer, storageValue = 1},
[108] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 1},
[109] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 4},
[110] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 7},
[111] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 16},
[112] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 26},
[113] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 29},
[114] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 32},
[115] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 35},
[116] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 38},
[117] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 41},
[118] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 43},
[119] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 46},
[120] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 47},
[121] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 50},
[122] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 55},
[123] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 56},
[124] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 58},
[125] = {storageId = Storage.ExplorerSociety.QuestLine, storageValue = 61},
[126] = {storageId = Storage.ExplorerSociety.CalassaQuest, storageValue = 2},
[127] = {storageId = Storage.ForgottenKnowledge.Tomes, storageValue = 1},
[128] = {storageId = Storage.ForgottenKnowledge.LastLoreKilled, storageValue = 1},
[129] = {storageId = Storage.ForgottenKnowledge.TimeGuardianKilled, storageValue = 1},
[130] = {storageId = Storage.ForgottenKnowledge.HorrorKilled, storageValue = 1},
[131] = {storageId = Storage.ForgottenKnowledge.DragonkingKilled, storageValue = 1},
[132] = {storageId = Storage.ForgottenKnowledge.ThornKnightKilled, storageValue = 1},
[133] = {storageId = Storage.ForgottenKnowledge.LloydKilled, storageValue = 1},
[134] = {storageId = Storage.ForgottenKnowledge.LadyTenebrisKilled, storageValue = 1},
[135] = {storageId = Storage.ForgottenKnowledge.AccessMachine, storageValue = 1},
[136] = {storageId = Storage.BarbarianTest.Questline, storageValue = 8},
[137] = {storageId = Storage.BarbarianTest.Mission01, storageValue = 3},
[138] = {storageId = Storage.BarbarianTest.Mission02, storageValue = 3},
[139] = {storageId = Storage.BarbarianTest.Mission03, storageValue = 3},
[140] = {storageId = Storage.BarbarianTest.Mission03, storageValue = 3},
[141] = {storageId = Storage.ChildrenoftheRevolution.Questline, storageValue = 21},
[142] = {storageId = Storage.ChildrenoftheRevolution.Mission00, storageValue = 2},
[143] = {storageId = Storage.ChildrenoftheRevolution.Mission01, storageValue = 3},
[144] = {storageId = Storage.ChildrenoftheRevolution.Mission02, storageValue = 5},
[145] = {storageId = Storage.ChildrenoftheRevolution.Mission03, storageValue = 3},
[146] = {storageId = Storage.ChildrenoftheRevolution.Mission04, storageValue = 6},
[147] = {storageId = Storage.ChildrenoftheRevolution.Mission05, storageValue = 3},
[148] = {storageId = Storage.ChildrenoftheRevolution.SpyBuilding01, storageValue = 1},
[149] = {storageId = Storage.ChildrenoftheRevolution.SpyBuilding02, storageValue = 1},
[150] = {storageId = Storage.ChildrenoftheRevolution.SpyBuilding03, storageValue = 1},
[151] = {storageId = Storage.ChildrenoftheRevolution.StrangeSymbols, storageValue = 1},
[152] = {storageId = Storage.DjinnWar.Faction.Greeting, storageValue = 2},
[153] = {storageId = Storage.DjinnWar.Faction.Marid, storageValue = 2},
[154] = {storageId = Storage.DjinnWar.Faction.Efreet, storageValue = 2},
[155] = {storageId = Storage.DjinnWar.EfreetFaction.Start, storageValue = 1},
[156] = {storageId = Storage.DjinnWar.EfreetFaction.Mission01, storageValue = 3},
[157] = {storageId = Storage.DjinnWar.EfreetFaction.Mission02, storageValue = 3},
[158] = {storageId = Storage.DjinnWar.EfreetFaction.Mission03, storageValue = 3},
[159] = {storageId = Storage.DjinnWar.MaridFaction.Start, storageValue = 1},
[160] = {storageId = Storage.DjinnWar.MaridFaction.Mission01, storageValue = 2},
[161] = {storageId = Storage.DjinnWar.MaridFaction.Mission02, storageValue = 2},
[162] = {storageId = Storage.DjinnWar.MaridFaction.RataMari, storageValue = 2},
[163] = {storageId = Storage.DjinnWar.MaridFaction.Mission03, storageValue = 3},
[164] = {storageId = Storage.TheWayToYalahar.Questline, storageValue = 1},
[165] = {storageId = Storage.SearoutesAroundYalahar.TownsCounter, storageValue = 1},
[166] = {storageId = Storage.SearoutesAroundYalahar.AbDendriel, storageValue = 1},
[167] = {storageId = Storage.SearoutesAroundYalahar.Darashia, storageValue = 1},
[168] = {storageId = Storage.SearoutesAroundYalahar.Venore, storageValue = 1},
[169] = {storageId = Storage.SearoutesAroundYalahar.Ankrahmun, storageValue = 1},
[170] = {storageId = Storage.SearoutesAroundYalahar.PortHope, storageValue = 1},
[171] = {storageId = Storage.SearoutesAroundYalahar.Thais, storageValue = 1},
[172] = {storageId = Storage.SearoutesAroundYalahar.LibertyBay, storageValue = 1},
[173] = {storageId = Storage.SearoutesAroundYalahar.Carlin, storageValue = 1},
[174] = {storageId = Storage.HiddenCityOfBeregar.DefaultStart, storageValue = 1},
[175] = {storageId = Storage.HiddenCityOfBeregar.GoingDown, storageValue = 1},
[176] = {storageId = Storage.TheIceIslands.Questline, storageValue = 12},
[177] = {storageId = Storage.TheIceIslands.Mission01, storageValue = 3},
[178] = {storageId = Storage.TheIceIslands.Mission02, storageValue = 5},
[179] = {storageId = Storage.TheIceIslands.Mission03, storageValue = 3},
[180] = {storageId = Storage.TheIceIslands.Mission04, storageValue = 2},
[181] = {storageId = Storage.TheIceIslands.Mission05, storageValue = 6},
[182] = {storageId = Storage.TheIceIslands.Mission06, storageValue = 8},
[183] = {storageId = Storage.TheIceIslands.Mission07, storageValue = 3},
[184] = {storageId = Storage.TheIceIslands.Mission08, storageValue = 4},
[185] = {storageId = Storage.TheIceIslands.Mission09, storageValue = 2},
[186] = {storageId = Storage.TheIceIslands.Mission10, storageValue = 2},
[187] = {storageId = Storage.TheIceIslands.Mission11, storageValue = 2},
[188] = {storageId = Storage.TheIceIslands.Mission12, storageValue = 6},
[189] = {storageId = Storage.TheInquisition.Questline, storageValue = 25},
[190] = {storageId = Storage.TheInquisition.Mission01, storageValue = 7},
[191] = {storageId = Storage.TheInquisition.Mission02, storageValue = 3},
[192] = {storageId = Storage.TheInquisition.Mission03, storageValue = 6},
[193] = {storageId = Storage.TheInquisition.Mission04, storageValue = 3},
[194] = {storageId = Storage.TheInquisition.Mission05, storageValue = 3},
[195] = {storageId = Storage.TheInquisition.Mission06, storageValue = 3},
[196] = {storageId = Storage.TheInquisition.Mission07, storageValue = 1},
[197] = {storageId = Storage.TheInquisition.GrofGuard, storageValue = 1},
[198] = {storageId = Storage.TheInquisition.KulagGuard, storageValue = 1},
[199] = {storageId = Storage.TheInquisition.TimGuard, storageValue = 1},
[200] = {storageId = Storage.TheInquisition.WalterGuard, storageValue = 1},
[201] = {storageId = Storage.TheInquisition.StorkusVampiredust, storageValue = 1},
[202] = {storageId = Storage.TheNewFrontier.Questline, storageValue = 28},
[203] = {storageId = Storage.TheNewFrontier.Mission01, storageValue = 3},
[204] = {storageId = Storage.TheNewFrontier.Mission02, storageValue = 6},
[205] = {storageId = Storage.TheNewFrontier.Mission03, storageValue = 3},
[206] = {storageId = Storage.TheNewFrontier.Mission04, storageValue = 2},
[207] = {storageId = Storage.TheNewFrontier.Mission05, storageValue = 7},
[208] = {storageId = Storage.TheNewFrontier.Mission06, storageValue = 3},
[209] = {storageId = Storage.TheNewFrontier.Mission07, storageValue = 3},
[210] = {storageId = Storage.TheNewFrontier.Mission08, storageValue = 2},
[211] = {storageId = Storage.TheNewFrontier.Mission09, storageValue = 3},
[212] = {storageId = Storage.TheNewFrontier.Mission10, storageValue = 1},
[213] = {storageId = Storage.TheNewFrontier.TomeofKnowledge, storageValue = 12},
[214] = {storageId = Storage.TheNewFrontier.Beaver1, storageValue = 1},
[215] = {storageId = Storage.TheNewFrontier.Beaver2, storageValue = 1},
[216] = {storageId = Storage.TheNewFrontier.Beaver3, storageValue = 1},
[217] = {storageId = Storage.TheNewFrontier.BribeKing, storageValue = 1},
[218] = {storageId = Storage.TheNewFrontier.BribeLeeland, storageValue = 1},
[219] = {storageId = Storage.TheNewFrontier.BribeExplorerSociety, storageValue = 1},
[220] = {storageId = Storage.TheNewFrontier.BribeWydrin, storageValue = 1},
[221] = {storageId = Storage.TheNewFrontier.BribeTelas, storageValue = 1},
[222] = {storageId = 12200, storageValue = 1},
[213] = {storageId = 12201, storageValue = 3},
[224] = {storageId = 12202, storageValue = 5},
[225] = {storageId = 12203, storageValue = 3},
[226] = {storageId = 12204, storageValue = 2},
[227] = {storageId = 12205, storageValue = 6},
[228] = {storageId = 12206, storageValue = 8},
[229] = {storageId = 12207, storageValue = 3},
[230] = {storageId = 12208, storageValue = 4},
[231] = {storageId = 12209, storageValue = 2},
[232] = {storageId = 12210, storageValue = 2},
[233] = {storageId = 12211, storageValue = 2},
[234] = {storageId = 12212, storageValue = 1},
[235] = {storageId = Storage.TheShatteredIsles.DefaultStart, storageValue = 3},
[236] = {storageId = Storage.TheShatteredIsles.TheGovernorDaughter, storageValue = 3},
[237] = {storageId = Storage.TheShatteredIsles.TheErrand, storageValue = 2},
[238] = {storageId = Storage.TheShatteredIsles.AccessToMeriana, storageValue = 1},
[239] = {storageId = Storage.TheShatteredIsles.APoemForTheMermaid, storageValue = 3},
[240] = {storageId = Storage.TheShatteredIsles.ADjinnInLove, storageValue = 5},
[241] = {storageId = Storage.TheShatteredIsles.AccessToLagunaIsland, storageValue = 1},
[242] = {storageId = Storage.TheShatteredIsles.AccessToGoroma, storageValue = 1},
[243] = {storageId = Storage.TheShatteredIsles.Shipwrecked, storageValue = 2},
[244] = {storageId = Storage.TheShatteredIsles.DragahsSpellbook, storageValue = 1},
[245] = {storageId = Storage.TheShatteredIsles.TheCounterspell, storageValue = 4},
[246] = {storageId = Storage.ThievesGuild.Quest, storageValue = 8}, -- la ultima mision es 8
[247] = {storageId = Storage.ThievesGuild.Mission01, storageValue = 2},
[248] = {storageId = Storage.ThievesGuild.Mission02, storageValue = 3},
[249] = {storageId = Storage.ThievesGuild.Mission03, storageValue = 3},
[250] = {storageId = Storage.ThievesGuild.Mission04, storageValue = 8},
[251] = {storageId = Storage.ThievesGuild.Mission05, storageValue = 2},
[252] = {storageId = Storage.ThievesGuild.Mission06, storageValue = 4},
[253] = {storageId = Storage.ThievesGuild.Mission07, storageValue = 2},
[254] = {storageId = Storage.ThievesGuild.Mission08, storageValue = 0}, -- no es uno es 0
[255] = {storageId = Storage.TravellingTrader.Mission01, storageValue = 1},
[256] = {storageId = Storage.TravellingTrader.Mission01, storageValue = 2},
[257] = {storageId = Storage.TravellingTrader.Mission02, storageValue = 5},
[258] = {storageId = Storage.TravellingTrader.Mission03, storageValue = 3},
[259] = {storageId = Storage.TravellingTrader.Mission04, storageValue = 3},
[260] = {storageId = Storage.TravellingTrader.Mission05, storageValue = 3},
[261] = {storageId = Storage.TravellingTrader.Mission06, storageValue = 2},
[262] = {storageId = Storage.TravellingTrader.Mission07, storageValue = 1},
[263] = {storageId = Storage.SvargrondArena.QuestLogGreenhorn, storageValue = 1},
[264] = {storageId = Storage.TibiaTales.DefaultStart, storageValue = 1},
[265] = {storageId = Storage.TibiaTales.ToAppeaseTheMightyQuest, storageValue = 1},
[266] = {storageId = 12450, storageValue = 6},
[267] = {storageId = 12451, storageValue = 3},
[268] = {storageId = 12452, storageValue = 3},
[269] = {storageId = 12453, storageValue = 2},
[270] = {storageId = 12454, storageValue = 4},
[271] = {storageId = 12455, storageValue = 13},
[272] = {storageId = 12456, storageValue = 8},
[273] = {storageId = 12457, storageValue = 3},
[274] = {storageId = 12458, storageValue = 4},
[275] = {storageId = 12459, storageValue = 3},
[276] = {storageId = 12460, storageValue = 5},
[277] = {storageId = 12330, storageValue = 1},
[278] = {storageId = 12331, storageValue = 3},
[279] = {storageId = 12332, storageValue = 13},
[280] = {storageId = 12333, storageValue = 3},
[281] = {storageId = 12334, storageValue = 2},
[282] = {storageId = 12335, storageValue = 3},
[283] = {storageId = 12336, storageValue = 3},
[284] = {storageId = Storage.FriendsandTraders.DefaultStart, storageValue = 1},
[285] = {storageId = Storage.FriendsandTraders.TheSweatyCyclops, storageValue = 2},
[286] = {storageId = Storage.FriendsandTraders.TheMermaidMarina, storageValue = 2},
[287] = {storageId = Storage.FriendsandTraders.TheBlessedStake, storageValue = 12},
[288] = {storageId = 100157, storageValue = 1},
[289] = {storageId = 2500, storageValue = 0},
[290] = {storageId = 22000, storageValue = 5},
[291] = {storageId = Storage.WrathoftheEmperor.Questline, storageValue = 1},
[292] = {storageId = Storage.WrathoftheEmperor.Mission01, storageValue = 3},
[293] = {storageId = Storage.WrathoftheEmperor.Mission02, storageValue = 3},
[294] = {storageId = Storage.WrathoftheEmperor.Mission03, storageValue = 3},
[295] = {storageId = Storage.WrathoftheEmperor.Mission04, storageValue = 3},
[296] = {storageId = Storage.WrathoftheEmperor.Mission05, storageValue = 3},
[297] = {storageId = Storage.WrathoftheEmperor.Mission06, storageValue = 4},
[298] = {storageId = Storage.WrathoftheEmperor.Mission07, storageValue = 6},
[299] = {storageId = Storage.WrathoftheEmperor.Mission08, storageValue = 2},
[300] = {storageId = Storage.WrathoftheEmperor.Mission09, storageValue = 2},
[301] = {storageId = Storage.WrathoftheEmperor.Mission10, storageValue = 6},
[302] = {storageId = Storage.WrathoftheEmperor.Mission11, storageValue = 1},
[303] = {storageId = Storage.TheApeCity.Started, storageValue = 1},
[304] = {storageId = Storage.TheApeCity.Questline, storageValue = 18},
[305] = {storageId = Storage.Oramond.QuestLine, storageValue = 1},
[306] = {storageId = Storage.Oramond.MissionToTakeRoots, storageValue = 3000},
[307] = {storageId = Storage.DangerousDepths.Questline, storageValue = 1},
[308] = {storageId = Storage.DangerousDepths.Dwarves.Home, storageValue = 2},
[309] = {storageId = Storage.DangerousDepths.Dwarves.Subterranean, storageValue = 2},
[310] = {storageId = Storage.DangerousDepths.Gnomes.Measurements, storageValue = 2},
[311] = {storageId = Storage.DangerousDepths.Gnomes.Ordnance, storageValue = 3},
[312] = {storageId = Storage.DangerousDepths.Gnomes.Charting, storageValue = 2},
[313] = {storageId = Storage.DangerousDepths.Scouts.Growth, storageValue = 2},
[314] = {storageId = Storage.DangerousDepths.Scouts.Diremaw, storageValue = 2},
[315] = {storageId = Storage.ThreatenedDreams.Start, storageValue = 1},
[316] = {storageId = Storage.ThreatenedDreams.TroubledMission01, storageValue = 4},
[317] = {storageId = Storage.AdventurersGuild.GreatDragonHunt.WarriorSkeleton, storageValue = 1},
[318] = {storageId = Storage.AdventurersGuild.GreatDragonHunt.WarriorSkeleton, storageValue = 2},
[319] = {storageId = Storage.Quest.Dawnport.Questline, storageValue = 1},
[320] = {storageId = Storage.Quest.Dawnport.GoMain, storageValue = 1},
[321] = {storageId = Storage.ForgottenKnowledge.AccessDeath, storageValue = 1},
[322] = {storageId = Storage.ForgottenKnowledge.AccessViolet, storageValue = 1},
[323] = {storageId = Storage.ForgottenKnowledge.AccessEarth, storageValue = 1},
[324] = {storageId = Storage.ForgottenKnowledge.AccessFire, storageValue = 1},
[325] = {storageId = Storage.ForgottenKnowledge.AccessIce, storageValue = 1},
[326] = {storageId = Storage.ForgottenKnowledge.AccessGolden, storageValue = 1}
}

local upperLimit = 1 -- change upperLimit to a higher one after adding a new quest to questTable

local freeQuests = CreatureEvent("FreeQuests")

function freeQuests.onLogin(player)

	if configManager.getBoolean(configKeys.FREE_QUESTS) and player:getStorageValue(Storage.FreeQuests) < upperLimit then
		for index, value in pairs(questTable) do
		if value.storageId and value.storageValue then
			if player:getStorageValue(value.storageId) < value.storageValue then
				player:setStorageValue(value.storageId, value.storageValue)
			end
		end
	end

	player:setStorageValue(Storage.FreeQuests, upperLimit)
	end
	return true
end

freeQuests:register()
