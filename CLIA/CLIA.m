function CLIA(Global)
% <algorithm> <C>
% An Interactive Many Objective Evolutioinary Algorithm with Cascade Clustering & Reference Point Incremental Learning
% Hongwei Ge & Mingde Zhao et al., 2018
% stable_threshold	---  --- BLAHBLAHBLAH
% delta	---  --- maximum number of reference vectors participating the selection

global stable_threshold delta crowding_pick_flag;
[stable_threshold, delta] = Global.ParameterSet([0, 0, 0], 2 * Global.N);
[Z, P, A, S, SVM] = initialize(Global);
while Global.NotTermination(S)
    MatingPool = TournamentSelection(2, Global.N, sum(max(0, P.cons), 2)); Offspring = GA(P(MatingPool));
    A = update_archive(A, [P, Offspring], Z, ceil(0.33 * Global.M * Global.N), Global);
    % SELECTION OF INDIVIDUALS
    [P, ICA, ICN] = cascade_cluster([P, Offspring], Z, 'PDM', Global.N, Global.evaluated < Global.evaluation);
    % ADAPTATION OF REFERENCE VECTORS     
    [Z, SVM] = incremental_learn(Z, ICA, ICN, A, SVM, Global);
    if Global.evaluated >= Global.evaluation && crowding_pick_flag
        S = crowding_pick(update_archive(A, P, Z, [], Global), Global.N, 'precise');
    else
        S = P;
    end
end
% this is a hasted update from PlatEMO to PlatEMO_v2
% quality not assured :D
end