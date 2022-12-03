local function readInputAll(style)
  return io.read(style);
end

local function readInputLine(style, options)
  local line = io.read(style);
  local parsedArray = {};

  if options and options["token"] then
    local i = 1;
    local j = 1;

    while line ~= nil do
      if line == options["token"] then
        i = i + 1;
        j = 1;
      else
        if not parsedArray[i] then
          parsedArray[i] = {};
        end
        parsedArray[i][j] = line;
        j = j + 1;
      end
      line = io.read(style);
    end
  else
    local i = 1;

    while line ~= nil do
      parsedArray[i] = line;
      i = i + 1;
      line = io.read(style);
    end
  end

  return parsedArray;
end

function readInputValues(options)
  local parsedArray = {};
  local line = io.read("l");
  local i = 1;

  if options and options["count"] then
    while line ~= nil do
      if options["replace"] then
        for key, value in pairs(options["replace"]) do
          line = line:gsub(key, value);
        end
      end

      line = line:gsub("%s+", "");

      if not parsedArray[line] then
        parsedArray[line] = 0;
      end

      parsedArray[line] = parsedArray[line] + 1;
      line = io.read("l");
    end
  else
    while line ~= nil do
      if options and options["replace"] then
        for key, value in pairs(options["replace"]) do
          line = line:gsub(key, value);
        end
      end

      line = line:gsub("%s+", "");

      parsedArray[i] = line;
      i = i + 1;
      line = io.read("l");
    end
  end

  return parsedArray;
end

function readInput(filename, style, options)
  io.input(filename);

  if style == "a" then
    return readInputAll(style)
  elseif style == "l" then
    return readInputLine(style, options)
  elseif style == "k" then
    return readInputValues(options)
  end
end
