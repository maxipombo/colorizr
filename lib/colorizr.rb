class String
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

  def self.create_colors
    COLORS.each do |color, code|
      send(:define_method, "#{color}") do
        "\e[#{code}m#{self}\e[0m"
      end
    end
  end

end

String.create_colors
