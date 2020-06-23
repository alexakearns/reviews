class Bandpass

  def filter(frequencies, lower_limit = 40)
    frequencies.map { |frequency| 

      if frequency < lower_limit 
        lower_limit
      else
        frequency
      end
  }
  end

end