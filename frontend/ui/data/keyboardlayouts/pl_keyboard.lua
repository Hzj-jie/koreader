return {
    shiftmode_keys = {["Shift"] = true},
    symbolmode_keys = {["Sym"] = true, ["ABC"] = true},
    utf8mode_keys = {["IM"] = true},
    umlautmode_keys = {["Äéß"] = true},
    keys = {
        -- first row
        {  --  1           2       3       4       5       6       7       8       9       10      11      12
            { "Q",        "q",    "„",    "0",    "Q",    "q",    "„",    "0",    "Ä",    "ä",    "1",    "ª", },
            { "W",        "w",    "!",    "1",    "W",    "w",    "!",    "1",    "Ö",    "ö",    "2",    "º", },
            { "E",        "e",    "@",    "2",    "Ę",    "ę",    "@",    "2",    "Ü",    "ü",    "3",    "¡", },
            { "R",        "r",    "#",    "3",    "R",    "r",    "#",    "3",    "ß",    "ß",    "4",    "¿", },
            { "T",        "t",    "+",    "=",    "T",    "t",    "+",    "=",    "À",    "à",    "5",    "¼", },
            { "Y",        "y",    "€",    "(",    "Y",    "y",    "€",    "(",    "Â",    "â",    "6",    "½", },
            { "U",        "u",    "‰",    ")",    "U",    "u",    "‰",    ")",    "Æ",    "æ",    "7",    "¾", },
            { "I",        "i",    "|",    "\\",   "I",    "i",    "|",    "\\",    "Ç",    "ç",    "8",    "©", },
            { "O",        "o",    "?",    "/",    "Ó",    "ó",    "?",    "/",    "È",    "è",    "9",    "®", },
            { "P",        "p",    "~",    "`",    "P",    "p",    "~",    "`",    "É",    "é",    "0",    "™", },
        },
        -- second row
        {  --  1           2       3       4       5       6       7       8       9       10      11      12
            { "A",        "a",    "…",    "@",    "Ą",    "ą",    "…",    "@",    "Ê",    "ê",    "Ş",    "ş", },
            { "S",        "s",    "$",    "4",    "Ś",    "ś",    "$",    "4",    "Ë",    "ë",    "İ",    "ı", },
            { "D",        "d",    "%",    "5",    "D",    "d",    "%",    "5",    "Î",    "î",    "Ğ",    "ğ", },
            { "F",        "f",    "^",    "6",    "F",    "f",    "^",    "6",    "Ï",    "ï",    "Ć",    "ć", },
            { "G",        "g",    ":",    ";",    "G",    "g",    ":",    ";",    "Ô",    "ô",    "Č",    "č", },
            { "H",        "h",    "\"",   "'",    "H",    "h",    "\"",    "'",    "Œ",    "œ",    "Đ",    "đ", },
            { "J",        "j",    "{",    "[",    "J",    "j",    "{",    "[",    "Ù",    "ù",    "Š",    "š", },
            { "K",        "k",    "}",    "]",    "K",    "k",    "}",    "]",    "Û",    "û",    "Ž",    "ž", },
            { "L",        "l",    "_",    "-",    "Ł",    "ł",    "_",    "-",    "Ÿ",    "ÿ",    "Ő",    "ő", },
        },
        -- third row
        {  --  1           2       3       4       5       6       7       8       9       10      11      12
            { label = "Shift",
              icon = "resources/icons/appbar.arrow.shift.png",
              width = 1.5
            },
            { "Z",        "z",    "&",    "7",    "Ż",    "ż",    "&",    "7",    "Á",    "á",    "Ű",    "ű", },
            { "X",        "x",    "*",    "8",    "Ź",    "ź",    "*",    "8",    "É",    "é",    "Ø",    "ø", },
            { "C",        "c",    "£",    "9",    "Ć",    "ć",    "£",    "9",    "Í",    "í",    "Þ",    "þ", },
            { "V",        "v",    "<",    "‚",    "V",    "v",    "<",    ",",    "Ñ",    "ñ",    "Ý",    "ý", },
            { "B",        "b",    ">",    ".",    "B",    "b",    ">",    ".",    "Ó",    "ó",    "†",    "‡", },
            { "N",        "n",    "‘",    "↑",    "Ń",    "ń",    "‘",    "“",    "Ú",    "ú",    "–",    "—", },
            { "M",        "m",    "’",    "↓",    "M",    "m",    "’",    "”",    "Ç",    "ç",    "…",    "¨", },
            { label = "Backspace",
              icon = "resources/icons/appbar.clear.reflect.horizontal.png",
              width = 1.5
            },
        },
        -- fourth row
        {
            { "Sym",     "Sym",  "ABC",  "ABC",  "Sym",  "Sym",  "ABC",  "ABC",  "Sym",  "Sym",  "ABC",  "ABC",
              width = 1.5},
            { label = "IM",
              icon = "resources/icons/appbar.globe.wire.png",
            },
            { "Äéß",     "Äéß",  "Äéß",  "Äéß",  "Äéß",  "Äéß",  "Äéß",  "Äéß",  "Äéß",  "Äéß",  "Äéß",  "Äéß", },
            { label = "space",
              " ",        " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",    " ",
                width = 3.0},
            { ",",        ",",    "“",    "←",    ",",    ",",    ".pl",    ".pl",    ",",    ",",    ",",    ",", },
            { ",",        ".",    "”",    "→",    ",",    ".",    ".PL",    ".PL",    ",",    ".",    ",",    ".", },
            { label = "Enter",
              "\n",       "\n",   "\n",   "\n",   "\n",   "\n",   "\n",   "\n",   "\n",   "\n",   "\n",   "\n",
              icon = "resources/icons/appbar.arrow.enter.png",
              width = 1.5,
            },
        },
    },
}
