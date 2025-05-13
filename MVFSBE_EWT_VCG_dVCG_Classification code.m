%% For obtaining functions used in this code, please contact Dr. Sibghatullah Khan (Email: sibghatikhan@gmail.com, Phone/WhatsApp: +919011881353)
clc
clear all
close all
path='path for features';
dHC=double(repelem(1,1994,1));
dPMI=double(repelem(2,897,1));
labels=[dHC;dPMI];

for k=1:44
    fname=num2str(k);
    exten='.xlsx';
    full_name=strcat(path,fname,exten);
    feat=xlsread(full_name);
    sz=size(feat,2)
    per=TooKhanML(feat, labels);
    performance(k,:)=[per sz];
end
    



