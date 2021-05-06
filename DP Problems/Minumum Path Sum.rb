def min_path_sum(grid)
   m = grid.length
    dp = Array.new(200){Array.new(200)}
    n = grid[0].length
    dp[0][0] = grid[0][0]
    for i in 1..(n-1)
        dp[0][i] = dp[0][i-1] + grid[0][i]
    end
    for i in 1..(m-1)
        dp[i][0] = dp[i-1][0] + grid[i][0]
    end
    for i in 1..(m - 1)
        for j in 1..(n - 1)
            a = dp[i-1][j]
            b = dp[i][j-1]
            dp[i][j] = [a, b].min + grid[i][j]
        end
    end
    dp[m-1][n -1]
end
