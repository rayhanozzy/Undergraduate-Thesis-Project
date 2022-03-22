clc
close all
clear all

 O=imread('lena.jpg');
 C=rgb2gray(O);
 K= [4	28	253	228;
     15	18	241	239;
      5	28	252	228;
     15	19	241	238];    %K = matriks kunci self-invertible
 thresh=graythresh(C);
 imbw=im2bw(C,thresh);
 P=conv2(double(imbw),K,'valid');
 Q=mod(P,256);
 imshow(O)
 figure,imshow(P)
 
%P=[165	165	165	166	168	165	158	162;
%   165	165	165	166	168	165	158	162;
%   165	165	165	166	168	165	158	162;
%   163	165	163	162	162	161	158	159;
%   163	163	162	164	164	163	159	159;
%   164	162	165	164	164	162	160	161;
%   160	159	159	161	167	165	160	160;
%   160	160	164	165	165	165	161	161];
%[m n]=size(P);

%C=[4	28	253	228;
%   15	18	241	239;
%   5	28	252	228;
%   15	19	241	238];
%[a b]=size(C);

%for i=1:m/a
    
%end


