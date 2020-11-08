# 输出信息检查器

主程序： `displaychecker` ，源代码： `displaychecker.c` 

使用说明：
```
displaychecker.exe [mars_display_message] [cpu_display_message]
```

其中， `[mars_display_message]` 与 `[cpu_display_message]` 分别为 Mars 和 CPU 的输出序列，均为文本文件。

本程序用于比对 Mars 与自己的 CPU 的输出序列，当发现不同时会输出不同处的行号及内容，并给予最终评测结果。

> CPU 输出序列分为两种，写寄存器和写内存。<br>
> 写寄存器示例： `100@00003008: $17 <= 12345678` <br>
> 写内存示例： `300@00003018: *00000014 <= 12341234` 

（忽略 `@` 符号前面的时间戳）

使用示例：
```
displaychecker.exe disp1.txt disp2.txt
```
