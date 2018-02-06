# unitwise-parse

Parsing Strings for Unitwise Values

## Installation

Via RubyGems:

```
$ gem install unitwise-parse
```

## Usage

```
> require 'unitwise/parse'
=> true

> Unitwise.parse("10 g")
=> #<Unitwise::Measurement value=10 unit=g>

> Unitwise.parse("hurgusburgus")
=> nil
```
