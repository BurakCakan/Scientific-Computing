%Burak ÇAKAN 2263960
classdef RockPaperScissors<handle
    properties
        moveOfPlayer
        moveOfComputer
    end
    methods
        function G=RockPaperScissors(varargin) %constructor method
            if nargin==2    %error check
                G.moveOfPlayer=varargin{1};
                G.moveOfComputer=varargin{2};
            else
                G.moveOfPlayer=randi([0 2],1);
                G.moveOfComputer=randi([0 2],1);
            end
        end
        function SetMoveP(d,m)% that takes object d and sets moveOfPlayer property of the object to m. 
            d.moveOfPlayer=m;
        end
        
        function PrintMoveP(d) %that takes the object and prints the move player made in the current turn.
        if d.moveOfPlayer==0
        disp('You played rock!');
        elseif d.moveOfPlayer==1 
        disp('You played paper!');
        elseif d.moveOfPlayer==2 
        disp('You played scissors!');
        else
        disp('Please write 0,1 or 2!');
        
        end
        end
        function PlayC(d) %that sets moveOfComputer property of the object to a random integer number which is between 0 and 2 and generated in this method.  
        r=randi([0 2],1);
        d.moveOfComputer=r;
      
        end
        
        function PrintMoveC(d) %that takes the object and prints the move computer made in the current turn.
        if d.moveOfComputer==0
        disp('Computer played rock!');
        elseif d.moveOfComputer==1 
        disp('Computer played paper!');
        elseif d.moveOfComputer==2 
        disp('Computer played scissors!');
        end
        end
        
        function [pw,cw]=Win(d) %takes object d and according to property values, prints an output in each turn. Also, it returns two arguments to main script that correspond to number of turns player win and number of turns computer win.
        pw=0;
        cw=0;
        if d.moveOfComputer==d.moveOfPlayer
            disp('Draw in this turn!');
            pw=1;
            cw=1;
        elseif d.moveOfComputer==0 && d.moveOfPlayer==2
            disp('You lose this turn!');
            cw=1;
            pw=0;
        elseif d.moveOfComputer==1 && d.moveOfPlayer==0
            disp('You lose this turn!');
            cw=1;
            pw=0;
        elseif d.moveOfComputer==2 && d.moveOfPlayer==1
            disp('You lose this turn!');
            cw=1;
            pw=0;
        else
            disp('You win this turn!');
            pw=1;
            cw=0;
        end
        end
    end %methods
end %class