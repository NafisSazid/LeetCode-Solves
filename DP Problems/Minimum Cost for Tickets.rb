def mincost_tickets(days, costs)
    length = days.length
    finish = days[length - 1]
    sum = Array.new(366, 0)
    for i in 1..(finish )
        if days.include? i
            if i == 1
                sum[i] = [costs[0], costs[1], costs[2]].min
            elsif i <= 7
                buyoneday = sum[i-1] + costs[0]
                buysevenday = costs[1]
                buythirtyday = costs[2]
                sum[i] = [buyoneday, buysevenday, buythirtyday].min
            elsif i <= 30
                buyoneday = sum[i-1] + costs[0]
                buysevenday = sum[i-7] + costs[1]
                buythirtyday = costs[2]
                sum[i] = [buyoneday, buysevenday, buythirtyday].min
            else
                buyoneday = sum[i-1] + costs[0]
                buysevenday = sum[i-7] + costs[1]
                buythirtyday = sum[i-30] + costs[2]
                sum[i] = [buyoneday, buysevenday, buythirtyday].min 
            end
        else
            sum[i] = sum[i-1]
        end
    end
    sum[days.last]
end
