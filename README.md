# Chromatic
[![Gem Version](https://badge.fury.io/rb/chromatic.png)](http://badge.fury.io/rb/chromatic)
[![Build Status](https://secure.travis-ci.org/AJ-Acevedo/chromatic.png?branch=nextgen)][travis]

Chromatic is a Ruby String class extension. Adds methods to set text color, background color, and text effects on ruby console, irb,  and command line output, using ANSI escape sequences.  

Chromatic is an updated fork of the [colorize](https://github.com/fazibear/colorize) gem. The original colorize gem became stale and it appear that the developer has abandoned the project.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chromatic'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install chromatic
```

To easily test if the gem is installed properly, type the following into the command line:

```
$ ruby -rubygems -e 'require "chromatic"; puts "This is a blinking red string".red.blink'
```
		

## Usage

```ruby
puts "This is blue".colorize( :blue )
puts "This is light blue".colorize( :light_blue )
puts "This is also blue".colorize( :color => :blue )
puts "This is light blue with red background".colorize( :color => :light_blue, :background => :red )
puts "This is light blue with red background".colorize( :light_blue ).colorize( :background => :red )
puts "This is blue text on red".blue.on_red
puts "This is red on blue".colorize( :red ).on_blue
puts "This is red on blue and underline".colorize( :red ).on_blue.underline
puts "This is blue text on red".blue.on_red.blink
puts "This is uncolorized".blue.on_red.uncolorize
````

## Versioning

Chromatic will start at version 0.6.0 as the last release of [colorize](https://github.com/fazibear/colorize) was 0.5.8.  
Chromatic will be maintained under the Semantic Versioning guidelines as much as possible.  
Releases will be numbered with the following format:

`<major>.<minor>.<patch>`

And constructed with the following guidelines:

* Breaking backward compatibility bumps the major (and resets the minor and patch)
* New additions without breaking backward compatibility bumps the minor (and resets the patch)
* Bug fixes and misc changes bumps the patch

For more information on SemVer, please visit: http://semver.org/

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credit

Created by: [FaziBear](https://github.com/fazibear/)  
Forked and Maintained by: [AJ Acevedo](https://github.com/aj-acevedo/) [@AJ_Acevedo](https://twitter.com/AJ_Acevedo)  

## License

Copyright (C) 2013 AJ Acevedo

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Suite 500 Boston, MA 02110-1335, USA
