class Bandpass

  def filter(frequencies)
    frequencies.map { |frequency| 

      if frequency < 40  
        40
      else
        frequency
      end
  }
  end

end