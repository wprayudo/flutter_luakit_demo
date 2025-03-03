------------------------------------------------------------------------------
--                          dbData.lua                                  --
------------------------------------------------------------------------------
local _data = {}

local _tableParams = {
	user = {
		__dbname__ = "test.db",
	    __tablename__ = "user",
	    username = {"CharField",{max_length = 100, unique = true, primary_key = true}},
	    password = {"CharField",{max_length = 50, unique = true}},
	    age = {"IntegerField",{null = true}},
	    job = {"CharField",{max_length = 50, null = true}},
	    des = {"TextField",{null = true}},
	    time_create = {"DateTimeField",{null = true}}
	},

	news = {
		__dbname__ = "test.db",
	    __tablename__ = "news",
	    title = {"CharField",{max_length = 100, unique = false, null = false, primary_key = true}},
	    text = {"TextField",{null = true}},
	    create_user_id = {"CharField",{max_length = 100, unique = true, foreign_key = true, to = "test.db_user",}}
	},

	companies = {
		__dbname__ = "test.db",
	    __tablename__ = "companies",
	    address = {"TextField",{}},
	    zip = {"TextField",{null = true}},
	    city = {"TextField",{}},
	    slug = {"TextField",{}},
	    state = {"TextField",{}},
	    contact = {"TextField",{}},
	    name =  {"TextField",{}},
        account =  {"IntegerField",{unique = false, null = false , primary_key = true}},
	 },

}

local dbData = {
    set = function (k,v)
        _data[k] = v
    end,

    get = function (k)
    	return _data[k]
    end,

    tableParams = function (k)
    	return _tableParams[k]
    end,
}
return dbData

