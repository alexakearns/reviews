class Bandpass

  def filter(frequencies, lower_limit = 40)
    frequencies.map { |frequency| 

      if frequency < lower_limit 
        lower_limit
      elsif frequency > 1000
        1000
      else
        frequency
      end
  }
  end

end