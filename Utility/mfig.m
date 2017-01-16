function [f] = mfig(varargin)

wid = 21.59;
hei = 27.94;

opts = checkOptions({'Landscape'}, varargin);
landscape = opts(1);

if ~isempty(varargin)
    if isnumeric(varargin{1})
        wid = varargin{1};
        hei = varargin{2};
    end 
end

if landscape
    wid1 = wid;
    wid = hei;
    hei = wid1;
end

f = figure;
set(f,'PaperPositionMode','auto');  
set(f, 'PaperPosition', [0 0 wid hei]);
if landscape
    f.PaperOrientation = 'landscape';
end
