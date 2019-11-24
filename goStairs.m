function goStairs(numLayers, stepSpace, pathCurrent)
    global possible_path;
    if nargin < 3
        pathCurrent = [];
    end
    for i = 1:3
        tmp_numLayers = numLayers - stepSpace(i);
        if tmp_numLayers < 0
            continue
        else
            tmp_pathCurrent = [pathCurrent(1:size(pathCurrent,2)),stepSpace(i)];
            if tmp_numLayers == 0
                possible_path = {possible_path{1:size(possible_path,2)},tmp_pathCurrent};
            else 
                goStairs(tmp_numLayers, stepSpace, tmp_pathCurrent);
            end
        end
    end
end

