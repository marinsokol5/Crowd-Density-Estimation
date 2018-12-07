function [labels, label_map] = create_label_map(filename)
%filename - ime datoteke s oznakama, labels - cell array kodiranih oznaka (pod brojem,
%tipa 0, 1 i 2), label_map - mapa s kljucevima koje su oznake i pod kojim
%brojem su. Primjer poziva: [labels, label_map] = create_label_map('labels.txt');
    fid = fopen(filename);
    tline = fgetl(fid);
    label_map = containers.Map('KeyType', 'char', 'ValueType', 'int32');
    labels = {};
    while(ischar(tline))
        if(~isKey(label_map, tline))
            label_map(tline) = length(label_map);
        end
        labels{end+1} = label_map(tline);
        tline = fgetl(fid);
    end
end

