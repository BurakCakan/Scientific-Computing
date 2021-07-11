%Burak ÇAKAN 2263960
clc;clear;format compact
a=input('Enter the number of turns you want to play:');
d=RockPaperScissors();
k=0;
l=0;
for n=1:a
disp('----------------- ');
fprintf('Turn %d \n',n);
m=input('Enter your move (0:Rock, 1:Paper, 2:Scissors):');
% G@PrintMoveP(d);
SetMoveP(d,m);
PrintMoveP(d);
PlayC(d);
PrintMoveC(d);
[pw,cw]=Win(d);
if pw==1 & cw==1
    k=k+1;
    l=l+1;
elseif cw==1 & pw==0
    l=l+1;
elseif pw==1 & cw==0
     k=k+1;
end

end

if k>l
    disp('Congratulations, you win the game :)');
elseif l>k
    disp('You lose :(');
else
    disp('Draw!');
end

