%Burak ÇAKAN 2263960
classdef Property<Asset
    properties
        mort_rate
    end
    methods
        function d=Property(varargin)
            d@Asset(varargin{1:nargin-1});
            if nargin==0
                d.mort_rate=0;
            else
                d.mort_rate=varargin{nargin};
            end
        end
        function disp(d)
            disp@Asset(d);
            fprintf('Property Information \n');
            fprintf('Mortgage Rate:%.2f \n',d.mort_rate);
        end
    end
end
