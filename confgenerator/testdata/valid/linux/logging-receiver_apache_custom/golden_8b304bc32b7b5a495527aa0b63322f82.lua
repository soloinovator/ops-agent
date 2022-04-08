
function process(tag, timestamp, record)
local __field_0 = (function()
return record["logging.googleapis.com/logName"]
end)();
local v = "apache_access";
(function(value)
if record["logging.googleapis.com/labels"] == nil
then
record["logging.googleapis.com/labels"] = {}
end
record["logging.googleapis.com/labels"]["agent.googleapis.com/receiver_type"] = value
end)(v)
local v = __field_0;
if v == nil then v = "apache_custom_access" end;
(function(value)
record["logging.googleapis.com/logName"] = value
end)(v)
return 2, timestamp, record
end