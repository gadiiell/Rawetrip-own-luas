local random

cheat.push_callback("on_event", function(event)
    if (event:get_name() == "player_death") then
        local attacker = event:get_int("attacker")
        local attacker_to_player = engine.get_player_for_user_id(attacker)
    
        local lp_idx = engine.get_local_player_index()
    
        if attacker_to_player == lp_idx then
            phrases = {"",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                ",
                "",
                "1",
                "",
                "",
                "",
                "プレイヤー-2#2792",
                "",
                "",
                "",
                "",
                "",
                "",
                "Whar are you doing",
                "",
                "Fatality.win User?",
                "        ",
                " ",
                "",
                "*DEAD*",
                "Neverlose User?",
                "Gamesense User?",
                "Primordial.dev User?",
                "Es lebe das dritte Reich",
                "Apoco si tilin",
                "Ad me on discord プレイヤー-2#2792",
                "Huh"}
                random = math.random(1,50)
            console.execute_client_cmd("say " .. phrases[random])
        end
    end
end)
