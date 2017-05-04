% Hello wolrd.m
% My first hello world program

clc;

disp('Hello world');
disp('I am goint ot learn matlab')

start = clock;
size(start)

staatString = datestr(start);
disp(['I started learing matlab on ' staatString ' hola'])

learnConstant = 1.5;
tau = (1.5 * 24) * 60 * 60;
endOfClass = (5 * 24) * (60) * 60;
knowledgeAtEnd = 1 - exp(-endOfClass / tau);
disp(['At the end of 6.094, I will know ' ...
    num2str(knowledgeAtEnd*100) '% of MATLAB'])

a = [1 2 3 4+j];
transpose(a);
a';
a.';

x = [12 13 5 8]
a=x(2:3)
b=x(1:end)
c=x(1:end - 1)

vec = [5 3 1 9 7]

[minVal, minInd] = min(vec)

x= linspace(0, 4*pi, 1000)
y = sin(x)


figure
plot(y)
plot(x,y)




