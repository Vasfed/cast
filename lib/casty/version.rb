module C
  VERSION = [0, 3, 2]

  class << VERSION
    include Comparable

    def to_s
      join('.')
    end
  end
end
