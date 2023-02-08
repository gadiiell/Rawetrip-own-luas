Made By gadiiell_
local labels = {
   " ❤ ",
        " ❤   ",
        " ❤   ",
        " ❤   ",
        " ❤ F ",
        " ❤ F ",
        " ❤ Fe ",
        " ❤ Fe ",
        " ❤ Fem ",
        " ❤ Fem ",
        " ❤ Femb ",
        " ❤ Femb ",
        " ❤ Fembo ",
        " ❤ Fembo ",
        " ❤ Femboy| ",
        " ❤ Femboy ",
        " ❤ Femboy| ",
        " ❤ Femboy ",
        " ❤ Femboy ",
        " ❤ Femboy| ",
        " ❤ Fembo ",
        " ❤ Fembo ",
        " ❤ Femb ",
        " ❤ Femb ",
        " ❤ Fem ",
        " ❤ Fem ",
        " ❤ Fe ",
        " ❤ Fe ",
        " ❤ F ",  
        " ❤ F ",
        " ❤  ",
        " ❤  ",
        " ❤ ",
        " ❤ ",
        " ❤        ",
        " ❤        ",  
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
