# frozen_string_literal: true

module Ext
  module Core
    module Hash
      # Methods for filtering a hash
      module Filtering
        # Select key-value pairs from hash using specified list of keys
        #
        # @example
        #   h = {'foo' => 'one', bar: 'two', baz: 'three'}
        #   h.select_keys('foo', :bar) #=> {"foo"=>"one", :bar=>"two"}
        #
        # @param args [Array<Object>] Any number of Strings or Symbols
        # @return [Hash] Hash with only specified key-value pairs
        def select_keys(*args)
          select { |k, _| args.include?(k) }
        end
      end
    end
  end
end
