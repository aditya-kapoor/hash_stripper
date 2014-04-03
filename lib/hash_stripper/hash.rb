class Hash
  def strip!
    each_pair.each do |key, value|
      case value
      when String
        value.strip!
        self[key] = value
      when Array
        value.each do |v|
          v.strip!
        end
      when Hash
        value.strip!
      end
    end
  end
end