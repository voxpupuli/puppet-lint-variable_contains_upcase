PuppetLint.new_check(:variable_contains_upcase) do
  def check
    tokens.select { |r|
      Set[:VARIABLE, :UNENC_VARIABLE].include? r.type
    }.each do |token|
      if token.value.match(/[A-Z]/)
        notify :warning, {
          :message => 'variable contains a capital letter',
          :line    => token.line,
          :column  => token.column,
          :token   => token,
        }
      end
    end
  end
  def fix(problem)
    problem[:token].value.downcase!
  end
end
