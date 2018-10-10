function sigmoid = sigmoid(input_matrix)
    [num_rows, num_cols] = size(input_matrix)

    mat_output = zeros(num_rows, num_cols)

    for row = 1:num_rows
        for col = 1:num_cols
            mat_output(row, col) = 2 / (1 + exp(-mat_input(row, col)) - 1)
        end
    end
    
    sigmoid = mat_output
end

function augment_input = augment_input(input_matirx)
    [num_rows, num_cols] = size(input_matrix)
    
    mat_output = zeros(num_rows + 1, num_cols)
    
    for row = 1:num_rows
        for col = 1:num_cols
            mat_output(row, col) = input_matrix(row, col)
        end
    end
    
    for col = 1:num_cols
        mat_output(row + 1, col) = 1
    end
    
    augment_input = mat_output
end

    