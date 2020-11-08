# 内存检查器

主程序： `memchecker.exe` ，源代码： `memchecker.c` 

用于比对从 Mars 中导出的 .data 与本人CPU的 DM 的内存数据。

使用说明：
```
memchecker [standard_mem_file] [cpu_mem_file]
```

其中 `[standard_mem_file]` 为从 Mars 中导出的汇编程序运行以后的 `.data` 内存片段， `[cpu_mem_file]` 为自己的 CPU 运行完成后导出的 `DM` 内存数据。二者皆为文本文件，格式为一行一个 8 位 16 进制数(即 4 个字节，一个 32 位的字)，第 i 行表示内存中首地址为 `4 * (i - 1)` 的一个字。

用命令行运行程序即可得到对内存检查的评测信息(出现不同的字的首地址，以及 Mars 和 CPU 内存结果分别在该字的内容)

使用示例：
```
memchecker.exe mem1.txt mem2.txt
```
