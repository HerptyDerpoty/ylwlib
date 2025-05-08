require("util")
-- removes an array of effects from a table, pass table as array and element as to_be_removed
function remove_table_element(array, to_be_removed)
    for _, i in pairs(to_be_removed) do
        for index, value in pairs(array) do
            if util.table.compare(value, i) then
                table.remove(array, index)
                break
            end
        end
    end
end

--same function but for array of strings
function remove_table_element_string(array, to_be_removed)
    for _, i in pairs(to_be_removed) do
        for index, value in pairs(array) do
            if value == i then
                table.remove(array, index)
                break
            end
        end
    end
end
