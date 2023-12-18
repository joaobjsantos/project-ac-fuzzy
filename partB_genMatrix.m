u = out.InputRandom.Data;
y = out.DiscreteOut.Data;

data_mat = zeros(length(u)-3,7);

for i=4:length(u)
    data_mat(i-3,1) = y(i-1);
    data_mat(i-3,2) = y(i-2);
    data_mat(i-3,3) = y(i-3);
    data_mat(i-3,4) = u(i-1);
    data_mat(i-3,5) = u(i-2);
    data_mat(i-3,6) = u(i-3);
    data_mat(i-3,7) = y(i);
end



% save data_mat.dat data_mat -ascii
save data_mat.mat data_mat


