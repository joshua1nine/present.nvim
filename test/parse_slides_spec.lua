---@diagnostic disable: undefined-field

local parse = require("present")._parse_slides

local eq = assert.are.same

describe("present.parse_slides", function()
	it("should parse and empty file", function()
		eq({
			slides = {
				{
					title = "",
					body = {},
					blocks = {},
				},
			},
		}, parse({}))
	end)

	it("sould parse a file with on slide, and a block", function()
		local results = parse({
			"# This is the first slide",
			"This is the body",
			"```lua",
			"print('hi')",
			"```",
		})

		-- Should only have on slide
		eq(1, #results.slides)
		local slide = results.slides[1]

		eq("# This is the first slide", slide.title)
		eq({ "This is the body", "```lua", "print('hi')", "```" }, slide.body)

		eq({ language = "lua", body = "print('hi')" }, slide.blocks[1])
	end)
end)
