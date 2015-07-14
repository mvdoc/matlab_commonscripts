function out_cell = readcsv(filename)
% READCSV reads a csv into a cell array. It's that easy.

% mvdoc Jul 15

fid = fopen(filename);
line = fgetl(fid);
out_cell = {};

while ischar(line)
    out_cell = [out_cell; strsplit(line, ',')];
    line = fgetl(fid);
end

fclose(fid);