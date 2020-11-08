# Logisim 内存输出整理程序

主程序： `logisim.exe` ，源代码： `logisim.c` 

本程序用于将 Logisim 运行 CPU 后导出的 RAM 数据进行整理，得到一行一字的标准 hex 内存格式。

Logisim 中导出的 RAM 数据的格式相对较乱，其主体格式为每行 8 段内容，一段内容可以是一个字 (16进制，没有前导零) 或者若干个连续的内容相同的字 (格式为 个数*内容 ，其中个数为十进制)。这种内存格式相对比较节省文本字节数，但不利于自动化评测的结果比对，因此本程序将 Logisim 导出的 RAM 数据进行了整合。

使用方法：
```
logisim.exe < [ram_from_logisim] > [ram_aligned]
```

其中 `[ram_from_logisim]` 为 Logisim 导出的 RAM 内容(文本文件)， `[ram_aligned]` 为经过整合后的，参照 Mars 格式的内存内容(文本文件)。使用时应注意不要忘记重定向符号。

使用示例：
```
logisim.exe < test_R.out > test_R.mem
```


