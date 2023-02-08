Made by Gadiiell_
local labels =
{
    "  ",
    " | ",
    " |\\ ",
    " |\\| ",
    " N ",
    " N3 ",
    " Ne ",
    " Ne\\ ",
    " Ne\\/ ",
    " Nev ",
    " Neve ",
    " Neve| ",
    " Neve|2 ",
    " Never|_ ",
    " Neverl ",
    " Neverl0 ",
    " Neverlo ",
    " Neverlo5 ",
    " Neverlos ",
    " Neverlos3 ",
    " Neverlose ",
    " Neverlose. ",
    " Neverlose.< ",
    " Neverlose.c< ",
    " Neverlose.cc ",
    " Neverlose.c< ",
    " Neverlose.< ",
    " Neverlose. ",
    " Neverlose ",
    " Neverlos3 ",
    " Neverlos ",
    " Neverlo5 ",
    " Neverlo ",
    " Neverl0 ",
    " Neverl ",
    " Never|_ ",
    " Never|2 ",
    " Neve|2 ",
    " Neve| ",
    " Neve ",
    " Nev3 ",
    " Nev ",
    " Ne\\/ ",
    " Ne\\ ",
    " Ne ",
    " N3 ",
    " N ",
    " |\\| ",
    " |\\ ",
    " | ",
    " "
}
local time = {
    first = 0, second = 0
}

cheat.push_callback("on_paint", function()
    if time.first < globalvars.get_tickcount() then
        time.second = time.second + 1
        if time.second > #labels + 1 then
            time.second = 0
        end

        engine.set_clantag(labels[time.second])

        time.first = globalvars.get_tickcount() + 17
    end
end)

