# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    current = nums[0]
    maximum = nums[0]
    length = nums.size
    puts length
    (1..(length - 1)).each do |i|
        current = [(nums[i] + current), nums[i]].max
        maximum = [current, maximum].max
    end
    maximum
end
