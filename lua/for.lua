---
--- Generated by Luanalysis
--- Created by chaunsin.
--- DateTime: 2024/5/27 16:48
---

local array = { "name", "chaunsin", "age" }

print('-----0-----')
for i, v in ipairs(array)
do
    print(i, v)
end
-- output:
-- 1       name
-- 2       chaunsin
-- 3       age

print('-----1-----')
for k, v in pairs(array) do
    print(k, v)
end
-- output:
-- 1       name
-- 2       chaunsin
-- 3       age

local tab = {
    [1] = "a",
    [3] = "b",
    [4] = "c"
}
tab["mykey"] = "myvalue"
tab[5] = { "age", 18 }

print('-----2-----')
for i, v in pairs(tab) do
    print(i, v)
    if i == 5 then
        print('\t', v[1], v[2])
    end
end
-- output:
-- 3       b
-- 1       a
-- mykey   myvalue
-- 4       c
-- 5       table: 0x60000019c6c0

print('-----3-----')
for i, v in ipairs(tab) do
    -- 输出 "a" ,k=2时断开
    print(tab[i])
end
-- output:
-- a