" vim-metal-genres.vim

function! GenresFormat()
	:g/^\s*$/d
	:%!awk '{getline x;print x;}1'
	:%norm Ji -
endfunction

function! GenresBandCount()
	:%norm 0t-D
	:%!uniq -ci
	:%le
	:sort! n
	:%norm 0wi- gg<CR>
endfunction

function! GenresCount()
	:%norm 0t-D
	:%!sort | uniq -ci
	:%le
	:sort! n
	:%norm 0wi- gg<CR>
endfunction

function! GenresBandReplace()
	:%s/CANDLEMASS/Candlemass/e
	:%s/Motorhead/Motörhead/e
	:%s/CONAN/Conan/e
	:%s/Ghost B.C./Ghost/e
	:%s/Babymetal/BABYMETAL/e
endfunction

function! GenresReplace()
	:%s/Black Sabbath/Doom Metal/e
	:%s/Candlemass/Doom Epic Metal/e
	:%s/Iron Maiden/Heavy Metal/e
	:%s/Motörhead/Heavy Metal/e
	:%s/Slayer/Thrash Metal/e
	:%s/Trouble/Doom Metal/e
	:%s/Acid King/Doom Stoner Metal/e
	:%s/Khemmis/Doom Metal/e
	:%s/Avenged Sevenfold/Heavy Metal/e
	:%s/Metallica/Thrash Metal/e
	:%s/Ghost/Heavy Metal/e
	:%s/Megadeth/Thrash Metal/e
	:%s/BABYMETAL/Power Metal/e
	:%s/Girlschool/Heavy Metal/e
	:%s/Slipknot/Nu Metal/e
	:%s/Manowar/Power Metal/e
	:%s/1000mods/Doom Stoner Metal/e
	:%s/Sleep/Doom Stoner Metal/e
	:%s/Gojira/Progressive Metal/e
	:%s/Judas Priest/Heavy Metal/e
	:%s/Churchburn/Doom Metal/e
	:%s/Dio/Heavy Metal/e
	:%s/Brothers of Metal/Power Metal/e
	:%s/Disturbed/Nu Metal/e
	:%s/Powerwolf/Power Metal/e
	:%s/Mastodon/Doom Sludge Metal/e
	:%s/Guns N' Roses/Heavy Metal/e
	:%s/Electric Wizard/Doom Stoner Metal/e
	:%s/Tortuga/Doom Metal/e
	:%s/Pallbearer/Doom Metal/e
	:%s/Firebreather/Doom Stoner Metal/e
	:%s/The Obsessed/Doom Metal/e
	:%s/Sons of Otis/Doom Stoner Metal/e
	:%s/SiM/Nu Metal/e
	:%s/Savatage/Power Metal/e
	:%s/Saint Vitus/Doom Metal/e
	:%s/Rivers of Nihil/Death Metal/e
	:%s/Rhapsody/Power Metal/e
	:%s/Pentagram/Doom Metal/e
	:%s/Ozzy Osbourne/Heavy Metal/e
	:%s/Led Zeppelin/Heavy Metal/e
	:%s/Lamb of God/Death Metal/e
	:%s/Kreator/Thrash Metal/e
	:%s/High On Fire/Doom Stoner Metal/e
	:%s/Grief/Doom Metal/e
	:%s/Gloryhammer/Power Metal/e
	:%s/EMBR/Doom Metal/e
	:%s/DragonForce/Power Metal/e
	:%s/Down/Doom Stoner Metal/e
	:%s/Dissection/Death Metal/e
	:%s/Death/Death Metal/e
	:%s/Crypt Sermon/Doom Epic Metal/e
	:%s/Cannibal Corpse/Death Metal/e
	:%s/Conan/Doom Metal/e
	:%s/Bruce Dickinson/Heavy Metal/e
	:%s/Blaze Bayley/Power Metal/e
	:%s/Acid Witch/Doom Death Metal/e
	:%s/Witchfinder General/Doom Metal/e
	:%s/Throne of Iron/Heavy Metal/e
	:%s/Megaton Sword/Heavy Metal/e
	:%s/Magic Circle/Doom Metal/e
	:%s/Iron Griffin/Heavy Metal/e
	:%s/Mournful Congregation/Doom Funeral Metal/e
	:%s/Hamferð/Doom Metal/e
	:%s/Mahr/Black Atmospheric Metal/e
	:%s/Biomechanical/Progressive Metal/e
	:%s/Immortal/Black Metal/e
	:%s/Bell Witch/Doom Funeral Metal/e
	:%s/Pantera/Thrash Metal/e
	:%s/Bathory/Black Metal/e
	:%s/Metal Metal/Metal/e
endfunction

function! GenresSort()
	:%s~\(\d\+\) - \(.*\)~\2 - \1
	:sort
endfunction

function! Genres()
	call GenresFormat()
	call GenresBandReplace()
	call GenresReplace()
	call GenresCount()
	call GenresSort()
endfunction
