%Burak ÇAKAN 2263960
classdef Bond<Asset
    properties
        int_rate
    end
    methods
        function c=Bond(varargin)
            c@Asset(varargin{1:nargin-1});
            if nargin==0
                c.int_rate=0;
            else
                c.int_rate=varargin{nargin};
            end
        end
        
        function disp(c)
            disp@Asset(c);
            fprintf('Bond Information \n');
            fprintf('Interest Rate:%.2f \n',c.int_rate);
        end
    end %methods
end %classdef
