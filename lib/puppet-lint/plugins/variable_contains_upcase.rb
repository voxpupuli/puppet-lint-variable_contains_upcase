PuppetLint.new_check(:variable_contains_upcase) do
  def check
    tokens.select { |r|
      VARIABLE_TYPES.include? r.type
    }.each do |token|
      if token.value.match(/[A-Z]/)
        notify :warning, {
          :message => 'variable contains a capital letter',
          :line    => token.line,
          :column  => token.column,
        }
      end
    end
  end
end
