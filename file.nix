let 
    zg = {
        name = "Seiji";
        age = 21;
        sex = "none";
    }; 
    funky = num: num * 5;
in 
rec {
    human = with zg; [ name age sex ];
    #inherit (zg) name sex;
    japname = with zg; ''
        ${name} Kun
    '';
    age = funky 4;
    
}


