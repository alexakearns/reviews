class Bandpass

  def filter(frequencies)
    if frequencies[0] < 40  
      return [40]
    else
      return frequencies
    end
  end

end