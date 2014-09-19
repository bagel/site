local args = ngx.req.get_uri_args();
for k, v in pairs(args) do
    if type(v) == "table" then
        ngx.say(string.format("%s: %s", k, table.concat(v, ", ")));
    else
        ngx.say(string.format("%s: %s", k, v));
    end
end
ngx.say("i am a lua!");
