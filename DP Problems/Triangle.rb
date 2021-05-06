# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
    m = triangle.length
    rowsum = Array.new(200){Array.new(200)}
    rowsum[0][0] = triangle[0][0]
    columnum = 0
    for i in 1..(m - 1)
        for j in 0..(triangle[i].length - 1)
            if j==0
              rowsum[i][j]  = rowsum[i-1][j] + triangle[i][j]
            elsif j >= triangle[i-1].length
                rowsum[i][j]  = rowsum[i-1][j-1] + triangle[i][j]
            else
                rowsum[i][j]  = [rowsum[i-1][j],  rowsum[i-1][j-1]].min + triangle[i][j]
            end
        end
    end
    puts  rowsum[m-1]
    rowsum[m-1].compact.min
end
