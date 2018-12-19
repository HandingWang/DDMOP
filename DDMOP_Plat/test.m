function test()
clear,clc;format compact

    alg = {@NSGAII};
    pro = {@DDMOP3};
    for a = 1 : length(alg)
        for p = 1 : length(pro)
            main('-N',100,'-algorithm',alg{a},'-problem',pro{p},...
                     '-evaluation',400);
        end
    end
end


