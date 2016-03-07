%neighbour.m
%select word and obtain effective and rejected neighbours

close all; %closes figures
clear all; %erase workspace
clc; %clear command window
freq=[];


[num1 txt1 RAW1]=xlsread('Lexical_database_tmp',1); %read in lexical database
[num3 txt3 RAW3]=xlsread('FNF_Ph_RN_2years_Excel_File',1); %read in lexical database
Dimns3=size(RAW3);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% headings and title for Excel file
filemain='FNF_Ph_RN_2years_freq';
datafilemain=sprintf('%s_Excel_File', filemain); %used to specify Excel file


for z=1:Dimns3; %runs through word list
    word=RAW3{z,1}; %input target word

Dimns=size(RAW1);


chck=0;

for i=1:Dimns(1);
    
   if strcmp(word,RAW1{i,4})
       Grab_code={RAW1{i,32}};
       chck=1;
       break; %break loop when match word and note i which gives the row
   
   end
   
end

if chck==1,


end

z
fq=Grab_code{1};
freq{z}=fq;

end

xlswrite(datafilemain,freq',1, 'A1'); 
