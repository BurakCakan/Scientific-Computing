%Burak ÇAKAN 2263960
[numFR txtFR rawFR] = xlsread('Fortunes.xlsx','CoffeeFortuneRandom');
[numFF txtFF rawFF] = xlsread('Fortunes.xlsx','CoffeeFortuneFigures');
[numCF txtCF rawCF] = xlsread('Fortunes.xlsx','CardsFortune');

y=datasample(txtFR,2);

fprintf('Welcome to Falci Baci!\n');
f=input('Please enter the type of fortune 1:Coffee fortune 2:Cards fortune\n');
if f==1
    fprintf('You requested a coffee fortune.\n');
    fprintf('Please tell me the three things you see in your cup among this list:')
    fprintf('(Horse, Horseshoe, Bird, Road, Snake, Devil, Fish, Tear, Evileye, Key, Car, Fullheart, Brokenheart, Rooster, Tree):\n')

    FirstFigure=input('','s');
    SecondFigure=input('','s');
    ThirdFigure=input('','s');

x1=find(strcmpi(FirstFigure,txtFF(:,1)));   
x2=find(strcmpi(SecondFigure,txtFF(:,1)));
x3=find(strcmpi(ThirdFigure,txtFF(:,1)));
disp(txtFF{x1,2});
disp(y{1,1});
disp(txtFF{x2,2});
disp(y{2,1});
disp(txtFF{x3,2});
elseif f==2
    fprintf('You requested a cards fortune. \n');
    z=input('Please enter the type of fortune (1: Draw one card, 2: Draw three cards, 3: Draw six cards):\n');
  
if z==1
    a=randperm(52);
    Deck=txtCF(a); %shuffling process
    disp('Shuffling and drawing three cards for you.');
    Card=Deck{52};
    c=find(strcmpi(Card,txtCF(:,1)));
    disp([Card '- ' txtCF{c,2}]); 
 
    elseif z==2
    a=randperm(52);   
    Deck=txtCF(a);%shuffling process
    disp('Shuffling and drawing three cards for you.');
    Card=Deck{52};
    c=find(strcmpi(Card,txtCF(:,1)));
    disp(['Past:' Card '- ' txtCF{c,2}]); 
    
    Card=Deck{51};
    c=find(strcmpi(Card,txtCF(:,1)));
    disp(['Present:' Card '- ' txtCF{c,2}]); 

   
    Card=Deck{50};
    c=find(strcmpi(Card,txtCF(:,1)));
    disp(['Future:' Card '- ' txtCF{c,2}]); 

    
    elseif z==3
    a=randperm(52);
    Deck=txtCF(a); %shuffling process
    disp('Shuffling and drawing three cards for you.')
    Card=Deck{52}; 
    c=find(strcmpi(Card,txtCF(:,1)));
    disp(['Yourself:' Card '- ' txtCF{c,2}]); 
   
    Card=Deck{51};
    c=find(strcmpi(Card,txtCF(:,1)));
    disp(['Your Family:' Card '- ' txtCF{c,2}]);
    
    Card=Deck{50};
    c=find(strcmpi(Card,txtCF(:,1)));
    disp(['Your Friend:' Card '- ' txtCF{c,2}]);
    
    Card=Deck{49};
    c=find(strcmpi(Card,txtCF(:,1)));
    disp(['What you expect:' Card '- ' txtCF{c,2}]);
  
    Card=Deck{48};
    c=find(strcmpi(Card,txtCF(:,1)));
    disp(['What You Don''t Expect:' Card '- ' txtCF{c,2}]);
    
    Card=Deck{47};
    c=find(strcmpi(Card,txtCF(:,1)));
    disp(['The Outcome:' Card '- ' txtCF{c,2}]);
    
        
    else
        disp('You must enter 1,2 or 3');

    end
    
else
fprintf('You can only choose 1 or 2.');    
end