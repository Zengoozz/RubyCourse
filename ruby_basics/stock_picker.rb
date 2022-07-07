def stock_picker (array)
    days = [0,0]
    min = array[0]
    min_index = 0
    profit = -1
    array.each_with_index do |stock, index|
        if(stock < min)
            min = stock
            min_index = index
            next
        end
        if (stock - min > profit)
            profit = stock - min
            days = [min_index,index]
        end
    end
    puts days
end

stocks = [17,3,6,9,15,8,6,1,10]
stock_picker (stocks)