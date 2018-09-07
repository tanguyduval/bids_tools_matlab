function res = bids_extract(BIDSsub, field1, varargin)
% extract infos from multiple subjects
% example:
%   bids_extract(BIDS.subjects,'name'); % extract subjects name
%   bids_extract(BIDS.subjects,'name')
res = {}; 
for iii=1:length(BIDSsub)
    try 
        field = BIDSsub(iii).(field1);
        for jjj = 1:length(varargin)
            field = field.(varargin{jjj});
        end
        res = {res{:} field };
    catch
        res = {res{:} {}};
    end 
end
res = res';