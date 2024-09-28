Used to move the cursor position with simple commands
> Note: this may only be used with xorg

## Dependencies:
- xdotool

## Usags:

Here are some examples:

```shell
# Move the cursor one space up and to the right
./move_mouse.sh + 1 - 1

# Move the cursor 10 spaces to the left
./move_mouse.sh - 10

# Move the cursor up 10 spaces
./move_mouse.sh + 0 - 10
```

The script doesn't work with multiplication (I don't want to fix it yet because it doesn't do anything useful for me)
