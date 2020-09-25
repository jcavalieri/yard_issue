# frozen_string_literal: true

require_relative './ext/core/hash/filtering'

# Reproduces the 'ProxyMethodError: Proxy cannot call method' issue
class Reproduced
  Hash.include Ext::Core::Hash::Filtering

  # Returns the hash with just the a and b key/values
  # @param my_hash [Hash]
  # @return [Hash]
  def do_something(my_hash)
    my_hash.select_keys('a', 'b')
  end
end
