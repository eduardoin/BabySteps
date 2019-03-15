module DataAttribute
  def episode_attr(*attrs)
    @permitted_params = attrs

    attrs.each do |attribute|
      define_method(attribute) do
        instance_variable_get("@#{attribute}")
      end

      define_method("#{attribute}=") do |new_value|
        instance_variable_set("@#{attribute}", new_value)
        send(:data).merge!(attribute.to_s => new_value)
      end
    end

    class_eval do
      after_initialize do
        raise 'Data must be a hash' unless data.is_a? Hash

        data.each do |attribute, value|
          instance_variable_set("@#{attribute}", value)
        end
      end
    end
  end

  def boolean_attr(*attrs)
    attrs.each do |attr|
      define_method("#{attr}?") { send(attr) == '1' }
      define_method(attr) do
        instance_variable_get("@#{attr}") == '1'
      end
    end
  end
end
