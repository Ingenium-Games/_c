# Putting the (c).ore in FiveM : [ORE] c = exports.c:ore()
__Tested on:__
- Windows Server 
- CentOS 8 Stream

<br>

## How to get started
As with all source code on the internet, please review and use at your own peril.
This is intended to be used by people getting started within FiveM and to be somewhat user friendly.

A general getting started guide will be under construction soon:

TBC

A basic over view is;
- Reading the FiveM Docs on how to Setup a Server,
- Installing and using a SQL Server (MariaDB, MySQL),
- Upload the db.sql to your server,
- Check your server.cfg is setup and like the example,
- Have Fun!


#### Note:
__*Please only use a linux build server if you are comfortable in development.*__

It does not have features that assist with debugging and troubleshooting for the CFX.re team.

<br>

## The Wiki

I am working on a wiki to showcase what funcitons do what for those that dont want to read the comments in the code.

TBC

<br>

## An Overview
This is a work of constant development and change, please be advised some functions may break or change on the way to release.

TBC

<br>

## Code Standards

<br>

### For Lua

<br>

- Variables
```lua
local this = {}
```
- Upper Cameel Case for Functions
```lua
function TestingFunction() end
```
- Add notes where possible.
```lua
--- Function Description
--@param var TYPE "Context around it"
function TestingFunction(var) end
```

<br>

### For SQL

<br>

- Database tables are lowercase, columns are capitalised.
```sql
INSERT INTO `job_accounts` (`Name`, `Description`, `Boss`, `Members`, `Accounts`) etc.. 
```
- Use Parameters within the mysql-async resource.
```lua
local data = Data being added
MySQL.Async.execute("INSERT `table` .... `Column1` = @data" ... ;", {["@data"] = data}, function(r) end)
```
- Do not do __*this shit!*__
```lua
local data = Data being added
MySQL.Async.execute("INSERT `table` .... `Column1` = "..data.." ... ;" etc...)
```

<br>

### For JS

<br>

I have yet to figure out wha thte ufck I am doing.

<br>

### For Front End (HTML,CSS,etc)

<br>

I have yet to figure out wha thte ufck I am doing.

<br>

## MIT License (MIT)

**Copyright (c) 2020 : Twiitchter as Ingenium-Games**

*Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:*

*The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.*

*THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*
