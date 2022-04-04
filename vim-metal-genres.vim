" vim-metal-genres

function! GenresFormat()
	" remove empty lines
	:g/^\s*$/d
	" flip around lines
	:%!awk '{getline x;print x;}1'
	" join lines and put dash between band and title
	:%norm Ji -
endfunction

function! GenresBandReplace()
	" fix irregularities
	:%s/CANDLEMASS/Candlemass/e
	:%s/Motorhead/Motörhead/e
	:%s/CONAN/Conan/e
	:%s/Ghost B.C./Ghost/e
	:%s/Babymetal/BABYMETAL/e
	:%s/St. Vitus/Saint Vitus/e
	:%s/Heloween/Helloween/e
endfunction

function! GenresReplace()
	" replace band with its genre
	:%s/1000mods/Doom Stoner Metal/e
	:%s/Acid King/Doom Stoner Metal/e
	:%s/Acid Witch/Doom Death Metal/e
	:%s/Avenged Sevenfold/Heavy Metal/e
	:%s/BABYMETAL/Power Metal/e
	:%s/Bathory/Black Metal/e
	:%s/Bell Witch/Doom Funeral Metal/e
	:%s/Biomechanical/Progressive Metal/e
	:%s/Black Sabbath/Doom Metal/e
	:%s/Blaze Bayley/Power Metal/e
	:%s/Brothers of Metal/Power Metal/e
	:%s/Bruce Dickinson/Heavy Metal/e
	:%s/Candlemass/Doom Epic Metal/e
	:%s/Cannibal Corpse/Death Metal/e
	:%s/Churchburn/Doom Metal/e
	:%s/Conan/Doom Metal/e
	:%s/Crypt Sermon/Doom Epic Metal/e
	:%s/Death/Death Metal/e
	:%s/Dio/Heavy Metal/e
	:%s/Dissection/Death Metal/e
	:%s/Disturbed/Nu Metal/e
	:%s/Down/Doom Stoner Metal/e
	:%s/DragonForce/Power Metal/e
	:%s/EMBR/Doom Metal/e
	:%s/Electric Wizard/Doom Stoner Metal/e
	:%s/Firebreather/Doom Stoner Metal/e
	:%s/Ghost/Heavy Metal/e
	:%s/Girlschool/Heavy Metal/e
	:%s/Gloryhammer/Power Metal/e
	:%s/Gojira/Progressive Metal/e
	:%s/Grief/Doom Metal/e
	:%s/Guns N' Roses/Heavy Metal/e
	:%s/Hamferð/Doom Metal/e
	:%s/High On Fire/Doom Stoner Metal/e
	:%s/Immortal/Black Metal/e
	:%s/Iron Griffin/Heavy Metal/e
	:%s/Iron Maiden/Heavy Metal/e
	:%s/Judas Priest/Heavy Metal/e
	:%s/Khemmis/Doom Metal/e
	:%s/Kreator/Thrash Metal/e
	:%s/Lamb of God/Death Metal/e
	:%s/Led Zeppelin/Heavy Metal/e
	:%s/Magic Circle/Doom Metal/e
	:%s/Mahr/Black Atmospheric Metal/e
	:%s/Manowar/Power Metal/e
	:%s/Mastodon/Doom Sludge Metal/e
	:%s/Megadeth/Thrash Metal/e
	:%s/Megaton Sword/Heavy Metal/e
	:%s/Metallica/Thrash Metal/e
	:%s/Motörhead/Speed Metal/e
	:%s/Mournful Congregation/Doom Funeral Metal/e
	:%s/Ozzy Osbourne/Heavy Metal/e
	:%s/Pallbearer/Doom Metal/e
	:%s/Pantera/Thrash Metal/e
	:%s/Pentagram/Doom Metal/e
	:%s/Powerwolf/Power Metal/e
	:%s/Rhapsody/Power Metal/e
	:%s/Rivers of Nihil/Death Metal/e
	:%s/Saint Vitus/Doom Metal/e
	:%s/Savatage/Power Metal/e
	:%s/SiM/Nu Metal/e
	:%s/Slayer/Thrash Metal/e
	:%s/Sleep/Doom Stoner Metal/e
	:%s/Slipknot/Nu Metal/e
	:%s/Sodom/Thrash Metal/e
	:%s/Sons of Otis/Doom Stoner Metal/e
	:%s/Soulfly/Nu Metal/e
	:%s/The Obsessed/Doom Metal/e
	:%s/Thou/Doom Sludge Metal/e
	:%s/Throne of Iron/Heavy Metal/e
	:%s/Tortuga/Doom Metal/e
	:%s/Trouble/Doom Metal/e
	:%s/Windhand/Doom Metal/e
	:%s/Witchfinder General/Doom Metal/e
	:%s/Cirith Ungol/Doom Epic Metal/e
	:%s/Deicide/Death Metal/e
	:%s/Wolves in the Throne Room/Black Metal/e
	:%s/Carach Angren/Black Metal/e
	:%s/Exodus/Thrash Metal/e
	:%s/Vader/Death Metal/e
	:%s/Venom/Black Metal/e
	:%s/Lich King/Thrash Metal/e
	:%s/Elder/Doom Metal/e
	:%s/A Sound of Thunder/Power Metal/e
	:%s/Accept/Heavy Metal/e
	:%s/Agalloch/Black Atmospheric Metal/e
	:%s/Akercocke/Death Metal/e
	:%s/Alice in Chains/Heavy Metal/e
	:%s/Altaria/Power Metal/e
	:%s/Anacrusis/Progressive Metal/e
	:%s/Anciients/Progressive Metal/e
	:%s/Angel Dust/Speed Metal/e
	:%s/Angra/Power Metal/e
	:%s/Annihilator/Thrash Metal/e
	:%s/Anthrax/Thrash Metal/e
	:%s/Arcturus/Black Metal/e
	:%s/Artillery/Thrash Metal/e
	:%s/Astral Doors/Power Metal/e
	:%s/At Vance/Power Metal/e
	:%s/At the Gates/Death Metal/e
	:%s/Atheist/Death Metal/e
	:%s/Attacker/Power Metal/e
	:%s/Autopsy/Death Metal/e
	:%s/Avantasia/Power Metal/e
	:%s/Avatarium/Doom Metal/e
	:%s/Axenstar/Power Metal/e
	:%s/Ayreon/Progressive Metal/e
	:%s/Baroness/Doom Sludge Metal/e
	:%s/Behemoth/Blackened Death Metal/e
	:%s/Black Majesty/Power Metal/e
	:%s/Blind Guardian/Power Metal/e
	:%s/Blood Incantation/Death Metal/e
	:%s/Bloodspot/Death Metal/e
	:%s/Bolt Thrower/Death Metal/e
	:%s/Brainstorm/Power Metal/e
	:%s/Budgie/Heavy Metal/e
	:%s/Burzum/Black Metal/e
	:%s/Cancer/Death Metal/e
	:%s/Carcass/Death Metal/e
	:%s/Catharsis/Power Metal/e
	:%s/Celesty/Power Metal/e
	:%s/Celtic Frost/Doom Death Metal/e
	:%s/Children of Bodom/Death Metal/e
	:%s/Conception/Power Metal/e
	:%s/Concerto Moon/Power Metal/e
	:%s/Converge/Metalcore/e
	:%s/Coroner/Thrash Metal/e
	:%s/Corrosion of Conformity/Doom Sludge Metal/e
	:%s/Cradle of Filth/Black Metal/e
	:%s/Crowbar/Doom Sludge Metal/e
	:%s/Cryonic Temple/Power Metal/e
	:%s/Cult of Luna/Doom Sludge Metal/e
	:%s/Cytotoxin/Death Metal/e
	:%s/DRI/Thrash Metal/e
	:%s/Dagoba/Groove Metal/e
	:%s/Danzig/Heavy Metal/e
	:%s/Dark Matter Secret/Death Metal/e
	:%s/Dark Moor/Power Metal/e
	:%s/Darkane/Glam Metal/e
	:%s/Darkthrone/Black Metal/e
	:%s/Death Angel/Thrash Metal/e
	:%s/Deathhammer/Thrash Metal/e
	:%s/Deathspell Omega/Black Metal/e
	:%s/Demons and Wizards/Power Metal/e
	:%s/Derdian/Power Metal/e
	:%s/Desaster/Black Metal/e
	:%s/Destruction/Thrash Metal/e
	:%s/DevilDriver/Death Metal/e
	:%s/Devin Townsend/Progressive Metal/e
	:%s/Diablo Swing Orchestra/Progressive Metal/e
	:%s/Diamond Head/Heavy Metal/e
	:%s/Dimmu Borgir/Black Atmospheric Metal/e
	:%s/Dionysus/Power Metal/e
	:%s/Dismember/Death Metal/e
	:%s/Divinefire/Power Metal/e
	:%s/Dokken/Glam Metal/e
	:%s/Domine/Power Metal/e
	:%s/Doomsword/Heavy Metal/e
	:%s/Dragonland/Power Metal/e
	:%s/Dread Sovereign/Doom Metal/e
	:%s/Dream Evil/Power Metal/e
	:%s/Dream Theater/Progressive Metal/e
	:%s/Dreamtale/Power Metal/e
	:%s/Dungeon/Power Metal/e
	:%s/Edge of Sanity/Death Metal/e
	:%s/Edugy/Power Metal/e
	:%s/Elevenking/Power Metal/e
	:%s/Emerald Sun/Power Metal/e
	:%s/Emperor/Black Metal/e
	:%s/Empyrium/Doom Metal/e
	:%s/Enforcer/Speed Metal/e
	:%s/Enslaved/Progressive Metal/e
	:%s/Entombed/Death Metal/e
	:%s/Esoteric/Doom Funeral Metal/e
	:%s/Evile/Thrash Metal/e
	:%s/Evoken/Doom Funeral Metal/e
	:%s/Falconer/Power Metal/e
	:%s/Fates Warning/Progressive Metal/e
	:%s/Fear Factory/Nu Metal/e
	:%s/Firewind/Power Metal/e
	:%s/Forgotten Tales/Power Metal/e
	:%s/Galneryus/Power Metal/e
	:%s/Gamma Ray/Power Metal/e
	:%s/Grave Digger/Power Metal/e
	:%s/Green Carnation/Progressive Metal/e
	:%s/Grim Reaper/Heavy Metal/e
	:%s/HammerFall/Power Metal/e
	:%s/Havok/Thrash Metal/e
	:%s/Heathen/Thrash Metal/e
	:%s/Heavenly/Power Metal/e
	:%s/Heavens Gate/Power Metal/e
	:%s/Heir Apparent/Progressive Metal/e
	:%s/Helloween/Power Metal/e
	:%s/Helstar/Power Metal/e
	:%s/Hibria/Power Metal/e
	:%s/Highlord/Power Metal/e
	:%s/Holy Terror/Thrash Metal/e
	:%s/Horndal/Doom Sludge Metal/e
	:%s/Human Fortress/Power Metal/e
	:%s/Iced Earth/Power Metal/e
	:%s/Impending Doom/Deathcore/e
	:%s/In Flames/Death Metal/e
	:%s/Ingested/Death Metal/e
	:%s/Insania/Power Metal/e
	:%s/Insomnium/Death Metal/e
	:%s/Iotunn/Death Metal/e
	:%s/Iron Mask/Power Metal/e
	:%s/Iron Savior/Power Metal/e
	:%s/Isole/Doom Epic Metal/e
	:%s/Jag Panzer/Power Metal/e
	:%s/Kamelot/Progressive Metal/e
	:%s/Katatonia/Death Metal/e
	:%s/King Diamond/Heavy Metal/e
	:%s/Kotipelto/Power Metal/e
	:%s/Kyuss/Doom Stoner Metal/e
	:%s/Liege Lord/Power Metal/e
	:%s/Lost Society/Thrash Metal/e
	:%s/Lunar Aurora/Black Metal/e
	:%s/Masterplan/Power Metal/e
	:%s/Mekong Delta/Thrash Metal/e
	:%s/Melechesh/Black Metal/e
	:%s/Meliah Rage/Thrash Metal/e
	:%s/Mercyful Fate/Heavy Metal/e
	:%s/Meshuggah/Djent/e
	:%s/Metal Church/Thrash Metal/e
	:%s/Moonsorrow/Black Metal/e
	:%s/Morbid Angel/Death Metal/e
	:%s/Morifade/Power Metal/e
	:%s/Mortal Vision/Thrash Metal/e
	:%s/Mourning Beloveth/Doom Death Metal/e
	:%s/My Dying Bride/Doom Metal/e
	:%s/Mystic Prophecy/Power Metal/e
	:%s/Mötley Crüe/Glam Metal/e
	:%s/Napalm Death/Death Metal/e
	:%s/Narnia/Power Metal/e
	:%s/Nasum/Grindcore/e
	:%s/Nightwish/Power Metal/e
	:%s/Nile/Death Metal/e
	:%s/Nuclear Assault/Thrash Metal/e
	:%s/Obituary/Death Metal/e
	:%s/Opeth/Death Metal/e
	:%s/Orden Ogan/Power Metal/e
	:%s/Orphaned Land/Doom Metal/e
	:%s/Pagan’s Mind/Power Metal/e
	:%s/Pain of Salvation/Progressive Metal/e
	:%s/Paradise Lost/Doom Metal/e
	:%s/Persuader/Power Metal/e
	:%s/Pig Destroyer/Grindcore/e
	:%s/Possessed/Death Metal/e
	:%s/Power Quest/Power Metal/e
	:%s/Power Trip/Death Metal/e
	:%s/Primal Fear/Power Metal/e
	:%s/Primordial/Black Metal/e
	:%s/Prong/Thrash Metal/e
	:%s/Psychotic Waltz/Progressive Metal/e
	:%s/Pyracanda/Thrash Metal/e
	:%s/Pyramaze/Thrash Metal/e
	:%s/Rage/Power Metal/e
	:%s/Rainbow/Heavy Metal/e
	:%s/ReinXeed/Power Metal/e
	:%s/Riverside/Progressive Metal/e
	:%s/Running Wild/Power Metal/e
	:%s/Sabaton/Power Metal/e
	:%s/Saxon/Heavy Metal/e
	:%s/Scorpions/Heavy Metal/e
	:%s/Secret Sphere/Progressive Metal/e
	:%s/Septicflesh/Death Metal/e
	:%s/Sepultura/Death Metal/e
	:%s/Seventh Avenue/Power Metal/e
	:%s/Shadow Gallery/Progressive Metal/e
	:%s/Sig:Ar:Tyr/Black Metal/e
	:%s/Sinbreed/Power Metal/e
	:%s/Skepticism/Doom Funeral Metal/e
	:%s/Skid Row/Heavy Metal/e
	:%s/Skull Fist/Speed Metal/e
	:%s/Skyforger/Black Metal/e
	:%s/Solitude Aeturnus/Doom Epic Metal/e
	:%s/Sonata Arctica/Power Metal/e
	:%s/Soundgarden/Doom Stoner Metal/e
	:%s/Space Chaser/Thrash Metal/e
	:%s/Steel Attack/Power Metal/e
	:%s/Steel Prophet/Power Metal/e
	:%s/Strapping Young Lad/Death Metal/e
	:%s/Stratovarius/Power Metal/e
	:%s/Suicidal Tendencies/Thrash Metal/e
	:%s/Summoning/Black Atmospheric Metal/e
	:%s/Swallow the Sun/Doom Metal/e
	:%s/Symphony X/Power Metal/e
	:%s/Symphorce/Power Metal/e
	:%s/System of a Down/ Metal/e
	:%s/Sólstafir/Black Metal/e
	:%s/Tad Morose/Power Metal/e
	:%s/Terrifier/Thrash Metal/e
	:%s/Terrorizer/Death Metal/e
	:%s/The Chasm/Death Metal/e
	:%s/The Ruins of Beverast/Black Metal/e
	:%s/Theocracy/Power Metal/e
	:%s/Thunderstone/Power Metal/e
	:%s/Timeless Miracle/Progressive Metal/e
	:%s/Toxik/Thrash Metal/e
	:%s/Twilightning/Power Metal/e
	:%s/Twisted Sister/Heavy Metal/e
	:%s/Type O Negative/Doom Metal/e
	:%s/Vanden Plas/Progressive Metal/e
	:%s/Vektor/Thrash Metal/e
	:%s/Vicious Rumors/Power Metal/e
	:%s/Virgin Steele/Heavy Metal/e
	:%s/Vision Divine/Power Metal/e
	:%s/Voivod/Progressive Metal/e
	:%s/W.A.S.P./Heavy Metal/e
	:%s/While Heaven Wept/Doom Epic Metal/e
	:%s/White Zombie/Heavy Metal/e
	:%s/Wuthering Heights/Progressive Metal/e
	:%s/Xentrix/Thrash Metal/e
	:%s/YOB/Doom Stoner Metal/e
	:%s/Yngwie J. Malmsteen/ Metal/e
	:%s/Metal Metal/Metal/e
endfunction

function! GenresBandCount()
	:%norm 0t-D
	" count number of repeating lines
	:%!uniq -ci
	" align everything to the left
	:%left
	" sort reverse numerically
	:sort! n
	" format like amount - band
	:%norm 0wi- gg<CR>
endfunction

function! GenresCount()
	" delete band name
	:%norm 0t-D
	" count repeating lines and add them up
	:%!sort | uniq -ci
	" align everything to the left
	:%left
	" sort reverse numerically
	:sort! n
	" format like genre - amount
	:%norm 0wi- gg<CR>
endfunction

function! GenresSort()
	" switch band and amount places
	:%s~\(\d\+\) - \(.*\)~\2 - \1
	" sort alphabetically
	:sort
endfunction

function! Genres()
	call GenresFormat()
	call GenresBandReplace()
	call GenresReplace()
	call GenresCount()
	call GenresSort()
endfunction
