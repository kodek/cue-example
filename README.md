# Example

Desired behavior:

```bash
❯ pwd
/Users/kodek/cue-example
❯ cue eval -c ./instances/...
value: "value-a"
// ---
value: "value-b"
```

Actual behavior in `_tool.cue`:

```bash
❯ cue list ./instances/...
command.list.print_value.text: conflicting values "value-b" and "value-a":
    ./instances/instance-a/instance.cue:3:8
    ./instances/instance-b/instance.cue:3:8
    ./list_tool.cue:7:11
```
