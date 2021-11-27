# stream-throttler

A text line-based naive stream throttler that discards lines above predefined threshold rate.

This utility might be useful sometimes to throttle input stream at given rate.


## Example

Infinitely echo current timestamp to emulate some frequent event, then throttle it. Ctrl-C to terminate.

```shell
while true; do date '+%FT%T.%N'; sleep 0.1; done | ruby main.rb
```
