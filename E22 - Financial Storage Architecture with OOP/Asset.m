%Burak ÇAKAN 2263960
classdef Asset<handle
    properties (Access=protected)
        descriptor
        current_value
        owner
    end
    methods
        function b=Asset(varargin)
         if nargin==0
             b.descriptor='undefined';
             b.current_value=0;
             b.owner='';
         else
            for i=1:nargin
                if isa(varargin{i},'char')
                    d=varargin{i};
                    b.descriptor=d;
                elseif isa(varargin{i},'float')
         
                    c=varargin{i};
                    b.current_value=c;
                   
                elseif isa(varargin{i},'Customer')
                    o=varargin{i};
                    b.owner=o;
                end
            end
         end
        end
        
        function disp(b)
            fprintf('Checking information for asset... \n');
            fprintf('%s current value:%.2f\n',b.descriptor,b.current_value);
            fprintf('%s owner information \n',b.descriptor);
%             fprintf('Full name of the customer is %s .\n',b.owner) ;
            disp(b.owner);
        end
        
    end %methods
end %classdef

            
            
