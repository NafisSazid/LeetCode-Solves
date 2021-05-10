def coin_change(coins, amount)
    dp = Array.new(10001, 99999)
    dp[0] = 0
    for i in 1..amount
        for j in 0..(coins.length - 1)
            if coins[j] <= i
                dp[i] = [dp[i], dp[i - coins[j]] + 1].min
            end
        end
    end
    dp[amount] >= 99999 ? -1 : dp[amount]
end
