module DeepFreezable
  def deep_freeze(array_or_hash)
    case array_or_hash.class.to_s
    when 'Array' then
      array_or_hash.each do |element|
        element.freeze
      end
    when 'Hash' then
      array_or_hash.each do |key, value|
        [key.freeze, value.freeze].freeze
      end
    else
      p array_or_hash.class
    end
    array_or_hash.freeze
  end
end