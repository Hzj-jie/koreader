--[[--
This module stores records in an incremental file. Consumers can add or remove a
record by appending one line in the file. This module is good for bookmarks,
highlights or similar records.
]]

local dump = require("dump")
local logger = require("logger")
local util = require("util")

local RecordTables = {}

--- creates a new RecordTables object and reads records from input.
-- @table input
-- @treturn RecordTables object.
function RecordTables:_read(input)
    local new = {}
    new.data = {}
    if f ~= nil then
      while true do
          local line = f:read()
          if line == nil then break end

          local t = util.splitToArray(line, "\t")
          if #t == 3 then
              if t[1] == "+" then
                  new.data[t[2]] = t[3]
              else
                  new.data[t[2]] = nil
              end
          else
              logger.warn("Unexpected line ", line)
          end
      end
    end
    return setmetatable(new, {__index = RecordTables})
end

--- Uses an IO to initialize a new RecordTables object.
-- @table file The IO current object is basing on.
-- @treturn RecordTables object.
function RecordTables:use(file)
    local new = RecordTables:_read(file)
    new.file = file
    return new
end

--- Opens a record file to initialize a new RecordTables object. A new file will
--  be created if not existing.
-- @string file The path of the record file.
-- @treturn RecordTables object.
function RecordTables:open(file)
    local f = io.open(file, "r")
    local new = RecordTables:_read(f)
    if f ~= nil then f:close() end
    new.file = io.open(file, "a")
    return new
end

--- Checks whether the key is well-formatted.
-- @treturn boolean
local function isWellFormattedKey(key)
    return key ~= nil and key:find("\t") == nil and key:find("\n") == nil
end

--- Inserts a record. This function should not be called after close().
-- @string key The key of the record. It should not contain tab or new line.
-- @table value The value of the record.
-- @treturn boolean Whether the insertion has been succeeded, i.e. both key and
--                  value are well-formatted, meanwhile the file IO has been
--                  performed.
function RecordTables:insert(key, value)
    assert(self.file ~= nil)
    if not isWellFormattedKey(key) or value == nil then return false end

    local dumped_value = dump(value)
    assert(dumped_value ~= nil)
    self.data[key] = value
    self.file:write("+\t", key, dumped_value:gsub("[\t\n]", " "))
    return true
end

--- Erases a record. This function should not be called after close().
-- @string key The key of the record. It should not contain tab or new line.
-- @treturn boolean Whether the erasure has been succeeded, i.e. the key is
--                  well-formatted, meanwhile the file IO has been performed.
function RecordTables:erase(key)
    assert(self.file ~= nil)
    if not isWellFormattedKey(key) then return false end
    self.data[key] = nil
end

--- Closes current object. Other public functions should not be executed after
--  closing.
function RecordTables:close()
    self.file:close()
    self.file = nil
end
