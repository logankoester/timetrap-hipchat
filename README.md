# timetrap-hipchat

This Ruby gem extends the popular
[Timetrap](https://github.com/samg/timetrap) time tracker to notify a
[Hipchat](https://hipchat.com) room any time you use the `in`, `out`, and
`resume` commands.

![Example](https://raw.githubusercontent.com/logankoester/timetrap-hipchat/master/demo.png)

## Requirements

* Ruby 1.9+
* My [fork of Timetrap](https://github.com/logankoester/timetrap/tree/hooks)
  (until **hook support** is accepted and released upstream)
* A Hipchat API token

## Installation

Once you've installed and configured my forked `timetrap` gem, install
timetrap-hipchat.

```bash
$ gem install timetrap-hipchat
```

Then use the `timetrap-hipchat` command to add the relevant hooks to your
sheets.

```bash
$ timetrap-hipchat <sheet>
```

Example...

```bash
$ timetrap-hipchat install example
Configuring hipchat hooks for timetrap sheet example
HipChat API Token: YOUR_TOKEN
HipChat Room Name: YOUR_ROOM
Your name: Your Name
      create  /home/ldk/.timetrap/hooks/example/hipchat.yml
      create  /home/ldk/.timetrap/hooks/example/in.rb
      create  /home/ldk/.timetrap/hooks/example/out.rb
      create  /home/ldk/.timetrap/hooks/example/resume.rb
All done!
```

**You're done!** Any time you run `timetrap [in|out|resume]`, the channel
you configured will be notified.

## License

(The MIT License)

Copyright (c) 2014 Logan Koester

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
