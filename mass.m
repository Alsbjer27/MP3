function [m,mPrime] = mass(t)
    fuel = 20;           
    weight = 20;          
    tot = fuel + weight;    
    fuel_con = 0.2;          
    
    if t < 7
        m = tot;
        mPrime = 0;
    elseif t < 107
        m = tot-fuel_con*(t-7);
        mPrime = -fuel_con;
    else
        m = weight;
        mPrime = 0;
    end
end