train_split = 0.7;
test_split = 0.3;

data_train = data_mat(1:floor(0.7*size(data_mat,1)), :);
data_test = data_mat(ceil(0.7*size(data_mat,1)):end, :);

