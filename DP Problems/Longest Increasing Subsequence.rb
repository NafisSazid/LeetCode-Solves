def length_of_lis(nums)
    dp = Array.new(2500, 1)
    for i in 1..(nums.length - 1)
        for j in 0..(i-1)
            if nums[j] < nums[i]
                if (dp[j] + 1) > dp[i]
                    dp[i] = dp[j] + 1
                end
            end  
        end
    end
    dp.max
end
