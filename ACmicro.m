function volt = ACmicro(t,y,net_par)

I   = net_par.I;
X   = net_par.X;

volt=X*y+I;

end