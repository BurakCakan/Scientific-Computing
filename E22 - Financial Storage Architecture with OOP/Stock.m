%Burak ÇAKAN 2263960
classdef Stock<Asset
    properties  
        num_shares 
        share_price
    end
    methods
        function s=Stock(varargin)
            s@Asset(varargin{1:nargin-2});
            if nargin==0
                s.num_shares=0;
                s.share_price=0;
            elseif nargin==4
            s.num_shares=varargin{nargin-1};    
            s.share_price=varargin{nargin};
            else
%                 for i=1:nargin
%                   if isempty(s.num_shares)
                    s.num_shares=varargin{nargin-1};
%                   else
                    s.share_price=varargin{nargin};
%                   end
%                 end
            end
        end
    
        function disp(s)
            disp@Asset(s);
            fprintf('Stock Information \n');
            fprintf('Number of Shares:%.2f \n',s.num_shares);
            fprintf('Number of Price:%.2f \n',s.share_price);
        end
    end %methods
end %classdef
