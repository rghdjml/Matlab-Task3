clc
clear
time=input("Please enter the time","s")


check_pm=0;
check_am=0;
index_first_colon=find(time==':',1)-1;
hours=12




for i=1:length(time)
    if time(i)=='a' || time(i)=='A'
        
        check_am=1
        bef_am=i-1
   elseif time(i)=='p' || time(i)=='P'
    check_pm=1
    bef_pm=i-1
    end
end

if check_am
    if time(1:index_first_colon)=='00'
        time_conversion=['12',time(index_first_colon +1 :bef_am)]
    else
        time_conversion=[time(1:bef_am)]
    end
elseif check_pm
    if time(1:index_first_colon)=='12'
        time_conversion=time(1:bef_pm)
    else
       hours = str2double (time(1:index_first_colon)) - str2double('0') -12
             time_conversion = [num2str(hours), time(index_first_colon +1 :bef_pm)]
    end
end
time_conversion