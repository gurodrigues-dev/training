# Count

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `count` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:count, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/count>.

# Example Count

```elixir
iex(1)> Count.start_link(0)
{:ok, #PID<0.152.0>}
iex(2)> Count.value()
0
iex(3)> Count.increment()
:ok
iex(4)> Count.value()
1
iex(5)> Count.increment()
:ok
iex(6)> Count.increment()
:ok
iex(7)> Count.value()
3
```

