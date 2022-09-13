package example

import "tool/cli"

command: list: {
  print_value: cli.Print & {
    text: value
  }
}
