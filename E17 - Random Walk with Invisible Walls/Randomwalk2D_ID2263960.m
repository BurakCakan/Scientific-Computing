%Burak ÇAKAN 2263960

function k = Randomwalk2D_ID2263960(x,y,N)
k=0;
xc=0;
yc=0;

while xc~=x || yc~=y
    
    r=rand;
    if r<.125
        xc=xc+1; %east
    elseif r<.25
        xc=xc-1;  %west
    elseif r<.375
        yc=yc+1; %north
    elseif r<.5
        yc=yc-1;  %south
    elseif r<.625
        xc=xc+1;
        yc=yc+1; %northeast
    elseif r<.75
        xc=xc-1;
        yc=yc+1; %northwest
    elseif r<.875
        xc=xc+1;
        yc=yc-1; %southeast
    else
        xc=xc-1;
        yc=yc-1; %southwest
    end
    
    if xc>(N-1)/2           %'like snake game' algorithm 
        xc=-((N-1)/2);
    elseif xc<-(N-1)/2
        xc=(N-1)/2;
    end
    
    if yc>(N-1)/2
        yc=-((N-1)/2);
    elseif yc<-(N-1)/2
        yc=(N-1)/2;
    end
    
    k=k+1;
end
end