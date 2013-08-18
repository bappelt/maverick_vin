[maverick_vin](http://bappelt.github.io/maverick_vin/)

[![Gem Version](https://badge.fury.io/rb/maverick_vin_parser.png)](http://badge.fury.io/rb/maverick_vin_parser)
[![Build Status](https://travis-ci.org/bappelt/maverick_vin.png)](https://travis-ci.org/bappelt/maverick_vin)
[![Coverage Status](https://coveralls.io/repos/bappelt/maverick_vin/badge.png?branch=master)](https://coveralls.io/r/bappelt/maverick_vin?branch=master)
[![Code Climate](https://codeclimate.com/github/bappelt/maverick_vin.png)](https://codeclimate.com/github/bappelt/maverick_vin)

============
A library for parsing Vehicle Identification Numbers (VINs) from 1970-77 Ford Mavericks and Mercury Comets

Includes a command line utility:
```
$ maverick_vin_parser 0X91U100647
{
  "year": 1970,
  "plant": "St. Thomas",
  "body": "Maverick 2-Door Sedan Standard",
  "engine": "170ci 6-Cylinder 1 bbl",
  "unit_number": 647
}
```
