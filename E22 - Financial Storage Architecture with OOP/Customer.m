%Burak ÇAKAN 2263960
classdef Customer<handle
properties
name
surname
ID
end 
methods 
    function a=Customer(varargin) %constructor method
        if nargin==0 %error check process
            a.name='';
            a.surname='';
        else
            for i=1:nargin
              if isa(varargin{i},'char')
                   if isempty(a.name)
                    n=varargin{i};
                    a.name=n;
                   else
                    s=varargin{i};
                    a.surname=s;
                   end
              elseif isa(varargin{i},'numeric')
                   a.ID=varargin{i};
              end %if isa
            end %for
        end %if nargin
    end %function   
    
    function disp(a)
        fprintf('Full name of the customer is %s %s .\n',a.name,a.surname);
    end       
            
    

end %methods
end %classdef