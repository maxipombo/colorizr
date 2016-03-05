class String

  # Define the colors
  COLORS = {
    red: 31,
    green: 32,
    yellow: 33,
    blue: 34,
    pink: 35,
    light_blue: 94,
    white: 97,
    light_grey: 37,
    black: 30
  }

  # Add code funtionality
  def self.create_colors
    COLORS.each do |color, code|
      send(:define_method, "#{color}") do
        "\e[#{code}m#{self}\e[0m"
      end
    end
  end

  # Returns all the color options
  def self.colors
    COLORS.keys
  end

  # Prints sample output demonstrating all the color methods
  def self.sample_colors
    COLORS.each_key do |color|
      puts 'This is ' + "#{color}".send(color)
    end
  end

end

String.create_colors
