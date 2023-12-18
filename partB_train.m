train_input_data = data_train(:, 1:end-1);
train_output_data = data_train(:, end);
clustering = ["GridPartition", "SubtractiveClustering", "FCMClustering"];
for c=1:3
    for o=0:1
        fis = genfis(train_input_data, train_output_data, genfisOptions(clustering(c)));
        [fis, error] = anfis(data_train, anfisOptions('InitialFis', fis, 'ValidationData', data_test, 'OptimizationMethod', o));
        writeFIS(fis, "partB_fis_"+clustering(c)+"_"+o+".fis");
    end
end
