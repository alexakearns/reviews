class Bandpass

  def filter(frequencies, lower_limit = 40, upper_limit = 1000)
    if frequencies.length == 0
      raise 'Error'
    else 
      frequencies.map { |frequency| 
        if frequency < lower_limit 
          lower_limit
        elsif frequency > upper_limit
          upper_limit
        else
          frequency
        end
      }
    end
  end
end
