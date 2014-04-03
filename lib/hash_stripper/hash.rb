class Hash
  def strip!
    each_pair.each do |key, value|
      case value
      when String
        self[key] = value.strip!
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