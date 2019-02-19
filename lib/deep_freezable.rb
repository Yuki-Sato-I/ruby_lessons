module DeepFreezable
  def deep_freeze(arrary_or_hash)
    case arrary_or_hash
    when Array
      arrary_or_hash.each do |element|
        element.freeze
      end
    when Hash
      arrary_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end
    arrary_or_hash.freeze
  end
end
