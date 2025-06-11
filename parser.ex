defmodule CsvParser.Parser do
  alias NimbleCSV.RFC4180, as: CSV

  def parse_file(file_path) do
    file_path
    |> File.stream!()
    |> CSV.parse_stream()
    |> Enum.map(fn [name, value] -> {name, String.to_float(value)} end)
  end

  def stats(data) do
    values = Enum.map(data, fn {_name, val} -> val end)
    total = Enum.sum(values)
    avg = total / max(length(values), 1)

    %{total: total, average: avg, count: length(values)}
  end

  def run(file_path) do
    data = parse_file(file_path)
    IO.inspect(stats(data))
  end
end
