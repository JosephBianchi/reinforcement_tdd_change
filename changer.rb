class Changer

#will refactor in future maybe - i probaly should iterate through coins i.e. [25,10,5,1]

  def self.make_change(pennies)
    coins = []
    if pennies % 25 == 0
      quarters = pennies / 25
      quarters.times { coins << 25 }
    else
      quarters = pennies / 25
      left_over = pennies % 25
      quarters.times { coins << 25 }
      if left_over % 10 == 0
        dimes = left_over / 10
        dimes.times { coins << 10 }
      else
        dimes = left_over / 10
        left_over = left_over % 10
        dimes.times { coins << 10 }
        if left_over % 5 == 0
          nickles = left_over / 5
          nickles.times { coins << 5 }
        else
          nickles = left_over / 5
          left_over = left_over % 5
          nickles.times { coins << 5 }
          if left_over % 1 == 0
            pennies = left_over / 1
            pennies.times { coins << 1 }
          else
            pennies = left_over / 1
            left_over = left_over % 1
          end
        end
      end
    end
    return coins
  end

end
