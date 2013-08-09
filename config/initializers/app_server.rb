def determine_app_server
  ["PhusionPassenger", "Unicorn", "Puma", "Thin"].each do |x|
    return x if Module.const_defined?(x)
  end
  return "Unknown"
end

APP_SERVER_IN_USE = determine_app_server