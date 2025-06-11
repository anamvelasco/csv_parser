# CSV File Parser in Elixir

This Elixir script parses a CSV file containing name-value pairs and calculates basic statistics such as total, average, and count.

## Features
- Parses CSV data using `NimbleCSV`
- Computes total, average, and count
- Displays results to console

## Technologies Used
- Elixir
- NimbleCSV
- Stream & Enum modules

## Setup Instructions

### 1. Create Project
```
mix new csv_parser
cd csv_parser
```

### 2. Add Dependency
Edit `mix.exs` and add `:nimble_csv` to deps:
```
defp deps do
  [
    {:nimble_csv, ">= 1.2.0"}
  ]
end
```
Then run:
```
mix deps.get
```

### 3. Add Module
Create `lib/csv_parser/parser.ex` with the provided code.

### 4. Create Example CSV (data.csv)
```
apples,10.5
bananas,20
cherries,15.75
```

### 5. Run Script
In `iex -S mix`:
```
CsvParser.Parser.run("data.csv")
```

## Testing

### Add test file: `test/parser_test.exs`

### Run Tests
```
mix test
```

## License
MIT
