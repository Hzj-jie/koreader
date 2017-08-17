describe("Math module", function()
    local Math

    setup(function()
        require("commonrequire")
        Math = require("optmath")
    end)

    it("should round away from zero", function()
        assert.are.same(2, Math.roundAwayFromZero(1.5))
        assert.are.same(2, Math.roundAwayFromZero(1.4))
        assert.are.same(-2, Math.roundAwayFromZero(-1.4))
        assert.are.same(1, Math.roundAwayFromZero(0.2))
        assert.are.same(-1, Math.roundAwayFromZero(-0.2))
    end)
    it("should round", function()
        assert.are.same(2, Math.round(1.5))
        assert.are.same(1, Math.round(1.4))
        assert.are.same(-1, Math.round(-1.4))
        assert.are.same(0, Math.round(0.2))
        assert.are.same(0, Math.round(-0.2))
    end)
    it("should determine odd or even", function()
        assert.are.same("odd", Math.oddEven(1))
        assert.are.same("even", Math.oddEven(2))
        assert.are.same("odd", Math.oddEven(3))
        assert.are.same("even", Math.oddEven(4))
        assert.are.same("even", Math.oddEven(-4))
        assert.are.same("odd", Math.oddEven(-3))
        assert.are.same("even", Math.oddEven(0))
    end)

end)
