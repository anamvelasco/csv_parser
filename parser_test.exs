defmodule CsvParser.ParserTest do
  use ExUnit.Case

  alias CsvParser.Parser

  test "parse_file returns correct tuple list" do
    File.write!("test.csv", "a,1.5\nb,2.5\n")
    result = Parser.parse_file("test.csv")
    assert result == [{"a", 1.5}, {"b", 2.5}]
  end

  test "stats calculates correctly" do
    data = [{"a", 1.0}, {"b", 2.0}, {"c", 3.0}]
    stats = Parser.stats(data)
    assert stats[:total] == 6.0
    assert stats[:average] == 2.0
    assert stats[:count] == 3
  end
end
