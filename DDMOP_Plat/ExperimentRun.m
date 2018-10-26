% function ExperimentRun(alg)
function ExperimentRun
    alg = {@KRVEA};
    pro = {@DDMOP1,@DDMOP2,@DDMOP3,@DDMOP4,@DDMOP5,@DDMOP6,@DDMOP7};
    run = 10;
    for r = run
        for a = 1 : length(alg)
            for p = 1 : length(pro)
                if ~exist(fullfile('Data',func2str(alg{a}),sprintf('%s_%s_%d.mat',func2str(alg{a}),func2str(pro{p}),r)),'file')
                        try
                            main('-algorithm',alg{a},'-problem',pro{p},'-run',r,'-terminalFcn','-mode',1);
                        catch
                        end
                end
            end
        end
    end
end


