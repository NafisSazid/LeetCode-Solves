def min_falling_path_sum(matrix)
    sum = Array.new(100){Array.new(100, 10001)}
    length = matrix[0].length
    sum[0] = matrix[0]
    for i in 1..(length - 1)
        for j in 0..(length - 1)
            temp1 = (j - 1) < 0 ? 10001 : sum[i-1][j-1]
            temp2 = (j+1) == length ? 10001 : sum[i-1][j+1]
            sum[i][j] = [temp1 + matrix[i][j], temp2 + matrix[i][j], sum[i-1][j] + matrix[i][j]].min 
        end
    end
    sum[length -1].min
end
