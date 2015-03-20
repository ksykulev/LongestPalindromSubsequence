class Tuple
  attr_reader :length, :content

  def initialize(char1, position1 = 0, char2 = nil, position2 = nil)
    @content = []
    @content[position1] = char1
    @content[position2] = char2 unless char2.nil?
    @length = (char1 == '' ? 0 : 1 ) + (char2.nil? ? 0 : 1)
  end

  def add(tuple)
    @length += tuple.length
    @content = squish(@content, tuple.content)
    self
  end

  private

  def squish(arr1, arr2)
    min, max = [arr1, arr2].minmax { |a,b| a.length <=> b.length }
    max.map.with_index { |x, i| x || min[i] }
  end
end

class LongestPalindromSubsequence
  attr_reader :str

  def initialize(str)
    @str = str
    @len = str.length
  end

  def length
    calculate.length
  end

  def example
    @example ||= calculate.content.compact.join('')
  end

  private

  def calculate
    @result_tuple ||= lps(0, @len - 1)
  end

  def lps(i, j)
    return Tuple.new('') if @len < 1
    #base case: 1 char
    return Tuple.new( str[i], i ) if i == j
    #base case: 2 of the same characters
    return Tuple.new( str[i], i, str[j], j ) if (str[i] == str[j]) && (i + 1 == j)

    return Tuple.new( str[i], i, str[j], j ).add(lps(i + 1, j - 1)) if str[i] == str[j]

    max( lps(i, j - 1), lps(i + 1, j) )
  end

  def max(tuple1, tuple2)
    tuple1.length > tuple2.length ? tuple1 : tuple2
  end
end

