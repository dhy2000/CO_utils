# test branch
lui $0, 0xface
ori $0, $0, 0x21
lui $1, 0xfacf
ori $1, $1, 0x22
lui $2, 0xfad0
ori $2, $2, 0x23
lui $3, 0xfad1
ori $3, $3, 0x24
lui $4, 0xfad2
ori $4, $4, 0x25
lui $5, 0xfad3
ori $5, $5, 0x26
lui $6, 0xfad4
ori $6, $6, 0x27
lui $7, 0xfad5
ori $7, $7, 0x28
lui $8, 0xfad6
ori $8, $8, 0x29
lui $9, 0xfad7
ori $9, $9, 0x2a
lui $10, 0xfad8
ori $10, $10, 0x2b
lui $11, 0xfad9
ori $11, $11, 0x2c
lui $12, 0xfada
ori $12, $12, 0x2d
lui $13, 0xfadb
ori $13, $13, 0x2e
lui $14, 0xfadc
ori $14, $14, 0x2f
lui $15, 0xfadd
ori $15, $15, 0x30
lui $16, 0xfade
ori $16, $16, 0x31
lui $17, 0xfadf
ori $17, $17, 0x32
lui $18, 0xfae0
ori $18, $18, 0x33
lui $19, 0xfae1
ori $19, $19, 0x34
lui $20, 0xfae2
ori $20, $20, 0x35
lui $21, 0xfae3
ori $21, $21, 0x36
lui $22, 0xfae4
ori $22, $22, 0x37
lui $23, 0xfae5
ori $23, $23, 0x38
lui $24, 0xfae6
ori $24, $24, 0x39
lui $25, 0xfae7
ori $25, $25, 0x3a
lui $26, 0xfae8
ori $26, $26, 0x3b
lui $27, 0xfae9
ori $27, $27, 0x3c
lui $28, 0xfaea
ori $28, $28, 0x3d
lui $29, 0xfaeb
ori $29, $29, 0x3e
lui $30, 0xfaec
ori $30, $30, 0x3f
lui $31, 0xfaed
ori $31, $31, 0x40
ori $16, $0, 0x1800
lui $17, 0x14
ori $17, $17, 0xc7fa
lui $18, 0xc5f
ori $18, $18, 0x4ec6
ori $8, $0, 0
ori $9, $0, 0
beq $8, $9, LB0
LA0: sw $17, 0($0)
LB0: sw $18, 0($16)
lui $17, 0x2570
ori $17, $17, 0x728b
lui $18, 0x166b
ori $18, $18, 0x45d8
ori $8, $0, 0
ori $9, $0, 0x1
beq $8, $9, LB1
LA1: sw $17, 4($0)
LB1: sw $18, 4($16)
lui $17, 0x34a8
ori $17, $17, 0xf63e
lui $18, 0xb24
ori $18, $18, 0xd7a8
ori $8, $0, 0
lui $9, 0xffff
ori $9, $9, 0xffff
beq $8, $9, LB2
LA2: sw $17, 8($0)
LB2: sw $18, 8($16)
lui $17, 0x2d78
ori $17, $17, 0x66ca
lui $18, 0x1374
ori $18, $18, 0x5b02
ori $8, $0, 0
ori $9, $0, 0xffff
beq $8, $9, LB3
LA3: sw $17, 12($0)
LB3: sw $18, 12($16)
lui $17, 0x5d9
ori $17, $17, 0xa2f3
lui $18, 0x96d
ori $18, $18, 0x8261
ori $8, $0, 0
lui $9, 0xffff
ori $9, $9, 0xfffd
beq $8, $9, LB4
LA4: sw $17, 16($0)
LB4: sw $18, 16($16)
lui $17, 0x3f43
ori $17, $17, 0x3a85
lui $18, 0x79e
ori $18, $18, 0xf15b
ori $8, $0, 0
lui $9, 0x7fff
ori $9, $9, 0xffff
beq $8, $9, LB5
LA5: sw $17, 20($0)
LB5: sw $18, 20($16)
lui $17, 0x92
ori $17, $17, 0x2f3a
lui $18, 0x2206
ori $18, $18, 0x850f
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0
beq $8, $9, LB6
LA6: sw $17, 24($0)
LB6: sw $18, 24($16)
lui $17, 0x2683
ori $17, $17, 0xb1
lui $18, 0xaa3
ori $18, $18, 0xbf97
ori $8, $0, 0x1
ori $9, $0, 0x1
beq $8, $9, LB7
LA7: sw $17, 28($0)
LB7: sw $18, 28($16)
lui $17, 0x1cd9
ori $17, $17, 0x735f
lui $18, 0x3a6
ori $18, $18, 0xc67b
ori $8, $0, 0x1
lui $9, 0xffff
ori $9, $9, 0xffff
beq $8, $9, LB8
LA8: sw $17, 32($0)
LB8: sw $18, 32($16)
lui $17, 0x3221
ori $17, $17, 0x8278
lui $18, 0x2145
ori $18, $18, 0x641b
ori $8, $0, 0x1
ori $9, $0, 0xffff
beq $8, $9, LB9
LA9: sw $17, 36($0)
LB9: sw $18, 36($16)
lui $17, 0x380f
ori $17, $17, 0x6ce4
lui $18, 0x3d2c
ori $18, $18, 0xfc23
ori $8, $0, 0x1
lui $9, 0xffff
ori $9, $9, 0xfffd
beq $8, $9, LB10
LA10: sw $17, 40($0)
LB10: sw $18, 40($16)
lui $17, 0x2284
ori $17, $17, 0x4d2f
lui $18, 0x1d92
ori $18, $18, 0x62fa
ori $8, $0, 0x1
lui $9, 0x7fff
ori $9, $9, 0xffff
beq $8, $9, LB11
LA11: sw $17, 44($0)
LB11: sw $18, 44($16)
lui $17, 0x372e
ori $17, $17, 0x2c77
lui $18, 0x31e5
ori $18, $18, 0x8831
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0
beq $8, $9, LB12
LA12: sw $17, 48($0)
LB12: sw $18, 48($16)
lui $17, 0x3fcb
ori $17, $17, 0x5f
lui $18, 0x2722
ori $18, $18, 0x63f6
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0xffff
ori $9, $9, 0xffff
beq $8, $9, LB13
LA13: sw $17, 52($0)
LB13: sw $18, 52($16)
lui $17, 0x1109
ori $17, $17, 0x83fa
lui $18, 0x35c4
ori $18, $18, 0x1781
lui $8, 0xffff
ori $8, $8, 0xffff
ori $9, $0, 0xffff
beq $8, $9, LB14
LA14: sw $17, 56($0)
LB14: sw $18, 56($16)
lui $17, 0x180d
ori $17, $17, 0xdbbf
lui $18, 0x2b56
ori $18, $18, 0xb084
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0xffff
ori $9, $9, 0xfffd
beq $8, $9, LB15
LA15: sw $17, 60($0)
LB15: sw $18, 60($16)
lui $17, 0x90
ori $17, $17, 0x747a
lui $18, 0x11a7
ori $18, $18, 0xff9e
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
beq $8, $9, LB16
LA16: sw $17, 64($0)
LB16: sw $18, 64($16)
lui $17, 0x25a0
ori $17, $17, 0xd38
lui $18, 0x359a
ori $18, $18, 0xf1c7
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
beq $8, $9, LB17
LA17: sw $17, 68($0)
LB17: sw $18, 68($16)
lui $17, 0x1f08
ori $17, $17, 0xdc37
lui $18, 0x2f98
ori $18, $18, 0xdcc4
ori $8, $0, 0xffff
ori $9, $0, 0xffff
beq $8, $9, LB18
LA18: sw $17, 72($0)
LB18: sw $18, 72($16)
lui $17, 0x1d4f
ori $17, $17, 0x3edf
lui $18, 0x2fa4
ori $18, $18, 0x2e93
ori $8, $0, 0xffff
lui $9, 0xffff
ori $9, $9, 0xfffd
beq $8, $9, LB19
LA19: sw $17, 76($0)
LB19: sw $18, 76($16)
lui $17, 0x2656
ori $17, $17, 0x64a2
lui $18, 0x2f09
ori $18, $18, 0xefde
ori $8, $0, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
beq $8, $9, LB20
LA20: sw $17, 80($0)
LB20: sw $18, 80($16)
lui $17, 0x24a1
ori $17, $17, 0xe4fc
lui $18, 0x9b3
ori $18, $18, 0x96a
ori $8, $0, 0xffff
lui $9, 0x8000
ori $9, $9, 0
beq $8, $9, LB21
LA21: sw $17, 84($0)
LB21: sw $18, 84($16)
lui $17, 0x1b35
ori $17, $17, 0xb059
lui $18, 0x2118
ori $18, $18, 0x3c87
lui $8, 0xffff
ori $8, $8, 0xfffd
lui $9, 0xffff
ori $9, $9, 0xfffd
beq $8, $9, LB22
LA22: sw $17, 88($0)
LB22: sw $18, 88($16)
lui $17, 0x3018
ori $17, $17, 0xcc09
lui $18, 0xad0
ori $18, $18, 0xbe81
lui $8, 0xffff
ori $8, $8, 0xfffd
lui $9, 0x7fff
ori $9, $9, 0xffff
beq $8, $9, LB23
LA23: sw $17, 92($0)
LB23: sw $18, 92($16)
lui $17, 0x1f7a
ori $17, $17, 0xc92c
lui $18, 0x2cc8
ori $18, $18, 0x670c
lui $8, 0xffff
ori $8, $8, 0xfffd
lui $9, 0x8000
ori $9, $9, 0
beq $8, $9, LB24
LA24: sw $17, 96($0)
LB24: sw $18, 96($16)
lui $17, 0x970
ori $17, $17, 0xe6aa
lui $18, 0x90f
ori $18, $18, 0xe1bb
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
beq $8, $9, LB25
LA25: sw $17, 100($0)
LB25: sw $18, 100($16)
lui $17, 0x2c57
ori $17, $17, 0xce1a
lui $18, 0x1b4c
ori $18, $18, 0x5269
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
beq $8, $9, LB26
LA26: sw $17, 104($0)
LB26: sw $18, 104($16)
lui $17, 0x3ddc
ori $17, $17, 0x5bb9
lui $18, 0x9ce
ori $18, $18, 0xdcac
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0
beq $8, $9, LB27
LA27: sw $17, 108($0)
LB27: sw $18, 108($16)
lui $17, 0x3495
ori $17, $17, 0xe154
lui $18, 0xc3e
ori $18, $18, 0xfe47
ori $8, $0, 0
ori $9, $0, 0
bne $8, $9, LB28
LA28: sw $17, 112($0)
LB28: sw $18, 112($16)
lui $17, 0x344c
ori $17, $17, 0x543c
lui $18, 0x9f4
ori $18, $18, 0xac97
ori $8, $0, 0
ori $9, $0, 0x1
bne $8, $9, LB29
LA29: sw $17, 116($0)
LB29: sw $18, 116($16)
lui $17, 0x2ed8
ori $17, $17, 0xd638
lui $18, 0x11e4
ori $18, $18, 0xa503
ori $8, $0, 0
lui $9, 0xffff
ori $9, $9, 0xffff
bne $8, $9, LB30
LA30: sw $17, 120($0)
LB30: sw $18, 120($16)
lui $17, 0x2ba9
ori $17, $17, 0x896c
lui $18, 0x2e33
ori $18, $18, 0x606f
ori $8, $0, 0
ori $9, $0, 0xffff
bne $8, $9, LB31
LA31: sw $17, 124($0)
LB31: sw $18, 124($16)
lui $17, 0x7df
ori $17, $17, 0x9f55
lui $18, 0x356a
ori $18, $18, 0x99a8
ori $8, $0, 0
lui $9, 0xffff
ori $9, $9, 0xfffd
bne $8, $9, LB32
LA32: sw $17, 128($0)
LB32: sw $18, 128($16)
lui $17, 0x2116
ori $17, $17, 0x92af
lui $18, 0x1b46
ori $18, $18, 0xd6d8
ori $8, $0, 0
lui $9, 0x7fff
ori $9, $9, 0xffff
bne $8, $9, LB33
LA33: sw $17, 132($0)
LB33: sw $18, 132($16)
lui $17, 0x3cc1
ori $17, $17, 0x7c6c
lui $18, 0x232b
ori $18, $18, 0x65f2
ori $8, $0, 0
lui $9, 0x8000
ori $9, $9, 0
bne $8, $9, LB34
LA34: sw $17, 136($0)
LB34: sw $18, 136($16)
lui $17, 0x1e30
ori $17, $17, 0x739e
lui $18, 0x3634
ori $18, $18, 0x3c26
ori $8, $0, 0x1
ori $9, $0, 0x1
bne $8, $9, LB35
LA35: sw $17, 140($0)
LB35: sw $18, 140($16)
lui $17, 0x1d30
ori $17, $17, 0x686c
lui $18, 0x3ee8
ori $18, $18, 0x284d
ori $8, $0, 0x1
lui $9, 0xffff
ori $9, $9, 0xffff
bne $8, $9, LB36
LA36: sw $17, 144($0)
LB36: sw $18, 144($16)
lui $17, 0x2f4e
ori $17, $17, 0x69ff
lui $18, 0xc8b
ori $18, $18, 0x485c
ori $8, $0, 0x1
ori $9, $0, 0xffff
bne $8, $9, LB37
LA37: sw $17, 148($0)
LB37: sw $18, 148($16)
lui $17, 0x35b8
ori $17, $17, 0xc774
lui $18, 0x200e
ori $18, $18, 0xb1d3
ori $8, $0, 0x1
lui $9, 0xffff
ori $9, $9, 0xfffd
bne $8, $9, LB38
LA38: sw $17, 152($0)
LB38: sw $18, 152($16)
lui $17, 0x1c2
ori $17, $17, 0x7bcb
lui $18, 0x24a4
ori $18, $18, 0xbd2d
ori $8, $0, 0x1
lui $9, 0x7fff
ori $9, $9, 0xffff
bne $8, $9, LB39
LA39: sw $17, 156($0)
LB39: sw $18, 156($16)
lui $17, 0x2200
ori $17, $17, 0xd4d5
lui $18, 0x35f3
ori $18, $18, 0xe451
ori $8, $0, 0x1
lui $9, 0x8000
ori $9, $9, 0
bne $8, $9, LB40
LA40: sw $17, 160($0)
LB40: sw $18, 160($16)
lui $17, 0x2a15
ori $17, $17, 0xc527
lui $18, 0x35e5
ori $18, $18, 0x23fe
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0xffff
ori $9, $9, 0xffff
bne $8, $9, LB41
LA41: sw $17, 164($0)
LB41: sw $18, 164($16)
lui $17, 0x709
ori $17, $17, 0x510c
lui $18, 0x1419
ori $18, $18, 0xd041
lui $8, 0xffff
ori $8, $8, 0xffff
ori $9, $0, 0xffff
bne $8, $9, LB42
LA42: sw $17, 168($0)
LB42: sw $18, 168($16)
lui $17, 0x124f
ori $17, $17, 0x66e
lui $18, 0x8fa
ori $18, $18, 0x4be1
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0xffff
ori $9, $9, 0xfffd
bne $8, $9, LB43
LA43: sw $17, 172($0)
LB43: sw $18, 172($16)
lui $17, 0x3569
ori $17, $17, 0xefcb
lui $18, 0x266a
ori $18, $18, 0x12d0
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
bne $8, $9, LB44
LA44: sw $17, 176($0)
LB44: sw $18, 176($16)
lui $17, 0x102c
ori $17, $17, 0x7225
lui $18, 0x1a
ori $18, $18, 0x879a
lui $8, 0xffff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
bne $8, $9, LB45
LA45: sw $17, 180($0)
LB45: sw $18, 180($16)
lui $17, 0x3399
ori $17, $17, 0x5f0
lui $18, 0xd79
ori $18, $18, 0xf3d8
ori $8, $0, 0xffff
ori $9, $0, 0xffff
bne $8, $9, LB46
LA46: sw $17, 184($0)
LB46: sw $18, 184($16)
lui $17, 0x2367
ori $17, $17, 0x3b04
lui $18, 0x748
ori $18, $18, 0x2b9d
ori $8, $0, 0xffff
lui $9, 0xffff
ori $9, $9, 0xfffd
bne $8, $9, LB47
LA47: sw $17, 188($0)
LB47: sw $18, 188($16)
lui $17, 0x3023
ori $17, $17, 0xf78b
lui $18, 0x22c7
ori $18, $18, 0x43e6
ori $8, $0, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
bne $8, $9, LB48
LA48: sw $17, 192($0)
LB48: sw $18, 192($16)
lui $17, 0x1bf2
ori $17, $17, 0xe1f3
lui $18, 0x2c8e
ori $18, $18, 0x4c0d
ori $8, $0, 0xffff
lui $9, 0x8000
ori $9, $9, 0
bne $8, $9, LB49
LA49: sw $17, 196($0)
LB49: sw $18, 196($16)
lui $17, 0x1bf2
ori $17, $17, 0x65db
lui $18, 0x24fb
ori $18, $18, 0x7a34
lui $8, 0xffff
ori $8, $8, 0xfffd
lui $9, 0xffff
ori $9, $9, 0xfffd
bne $8, $9, LB50
LA50: sw $17, 200($0)
LB50: sw $18, 200($16)
lui $17, 0x283b
ori $17, $17, 0xc409
lui $18, 0x2043
ori $18, $18, 0xbabd
lui $8, 0xffff
ori $8, $8, 0xfffd
lui $9, 0x7fff
ori $9, $9, 0xffff
bne $8, $9, LB51
LA51: sw $17, 204($0)
LB51: sw $18, 204($16)
lui $17, 0x2c87
ori $17, $17, 0x1d51
lui $18, 0xc28
ori $18, $18, 0x12b0
lui $8, 0xffff
ori $8, $8, 0xfffd
lui $9, 0x8000
ori $9, $9, 0
bne $8, $9, LB52
LA52: sw $17, 208($0)
LB52: sw $18, 208($16)
lui $17, 0xb6a
ori $17, $17, 0x688d
lui $18, 0x1d46
ori $18, $18, 0xc531
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x7fff
ori $9, $9, 0xffff
bne $8, $9, LB53
LA53: sw $17, 212($0)
LB53: sw $18, 212($16)
lui $17, 0x63d
ori $17, $17, 0xc38a
lui $18, 0x60a
ori $18, $18, 0xabf2
lui $8, 0x7fff
ori $8, $8, 0xffff
lui $9, 0x8000
ori $9, $9, 0
bne $8, $9, LB54
LA54: sw $17, 216($0)
LB54: sw $18, 216($16)
lui $17, 0x3b9d
ori $17, $17, 0xef8
lui $18, 0x3940
ori $18, $18, 0xb29d
lui $8, 0x8000
ori $8, $8, 0
lui $9, 0x8000
ori $9, $9, 0
bne $8, $9, LB55
LA55: sw $17, 220($0)
LB55: sw $18, 220($16)
lui $17, 0xe8c
ori $17, $17, 0x4558
lui $18, 0x1a48
ori $18, $18, 0xe548
ori $8, $0, 0
bgez $8, LB56
LA56: sw $17, 224($0)
LB56: sw $18, 224($16)
lui $17, 0x2831
ori $17, $17, 0xfcf0
lui $18, 0x1ce7
ori $18, $18, 0x1e3
ori $8, $0, 0x1
bgez $8, LB57
LA57: sw $17, 228($0)
LB57: sw $18, 228($16)
lui $17, 0x2642
ori $17, $17, 0x84b9
lui $18, 0x36b4
ori $18, $18, 0x7cac
lui $8, 0xffff
ori $8, $8, 0xffff
bgez $8, LB58
LA58: sw $17, 232($0)
LB58: sw $18, 232($16)
lui $17, 0x27fc
ori $17, $17, 0xc4e
lui $18, 0x2434
ori $18, $18, 0xe79a
ori $8, $0, 0xffff
bgez $8, LB59
LA59: sw $17, 236($0)
LB59: sw $18, 236($16)
lui $17, 0xbcb
ori $17, $17, 0x46dd
lui $18, 0x2387
ori $18, $18, 0x2ccb
lui $8, 0xffff
ori $8, $8, 0xfffd
bgez $8, LB60
LA60: sw $17, 240($0)
LB60: sw $18, 240($16)
lui $17, 0xf8a
ori $17, $17, 0xf919
lui $18, 0x26b3
ori $18, $18, 0x8c01
lui $8, 0x7fff
ori $8, $8, 0xffff
bgez $8, LB61
LA61: sw $17, 244($0)
LB61: sw $18, 244($16)
lui $17, 0x2569
ori $17, $17, 0xe223
lui $18, 0x1fa4
ori $18, $18, 0xcb00
lui $8, 0x8000
ori $8, $8, 0
bgez $8, LB62
LA62: sw $17, 248($0)
LB62: sw $18, 248($16)
lui $17, 0x272b
ori $17, $17, 0x8111
lui $18, 0x2c3b
ori $18, $18, 0xe84
ori $8, $0, 0x5ed0
bgez $8, LB63
LA63: sw $17, 252($0)
LB63: sw $18, 252($16)
lui $17, 0x24dd
ori $17, $17, 0xa556
lui $18, 0x3a56
ori $18, $18, 0x5a01
lui $8, 0xffff
ori $8, $8, 0xecea
bgez $8, LB64
LA64: sw $17, 256($0)
LB64: sw $18, 256($16)
lui $17, 0x2e91
ori $17, $17, 0xa864
lui $18, 0x2abc
ori $18, $18, 0xa785
ori $8, $0, 0
bltz $8, LB65
LA65: sw $17, 260($0)
LB65: sw $18, 260($16)
lui $17, 0x1429
ori $17, $17, 0x2089
lui $18, 0x1392
ori $18, $18, 0x6f1e
ori $8, $0, 0x1
bltz $8, LB66
LA66: sw $17, 264($0)
LB66: sw $18, 264($16)
lui $17, 0x6f2
ori $17, $17, 0xe157
lui $18, 0x3679
ori $18, $18, 0xf251
lui $8, 0xffff
ori $8, $8, 0xffff
bltz $8, LB67
LA67: sw $17, 268($0)
LB67: sw $18, 268($16)
lui $17, 0x9e9
ori $17, $17, 0x9605
lui $18, 0x513
ori $18, $18, 0xffa6
ori $8, $0, 0xffff
bltz $8, LB68
LA68: sw $17, 272($0)
LB68: sw $18, 272($16)
lui $17, 0x2905
ori $17, $17, 0x96ea
lui $18, 0x22e2
ori $18, $18, 0x739b
lui $8, 0xffff
ori $8, $8, 0xfffd
bltz $8, LB69
LA69: sw $17, 276($0)
LB69: sw $18, 276($16)
lui $17, 0x1a2c
ori $17, $17, 0x71e4
lui $18, 0x1dcb
ori $18, $18, 0x8490
lui $8, 0x7fff
ori $8, $8, 0xffff
bltz $8, LB70
LA70: sw $17, 280($0)
LB70: sw $18, 280($16)
lui $17, 0x9c5
ori $17, $17, 0x15cf
lui $18, 0x2f3a
ori $18, $18, 0xc9b7
lui $8, 0x8000
ori $8, $8, 0
bltz $8, LB71
LA71: sw $17, 284($0)
LB71: sw $18, 284($16)
lui $17, 0x3d60
ori $17, $17, 0xf507
lui $18, 0x2e66
ori $18, $18, 0x499b
ori $8, $0, 0x69d0
bltz $8, LB72
LA72: sw $17, 288($0)
LB72: sw $18, 288($16)
lui $17, 0x824
ori $17, $17, 0x7821
lui $18, 0x323c
ori $18, $18, 0x5eac
lui $8, 0xffff
ori $8, $8, 0x872c
bltz $8, LB73
LA73: sw $17, 292($0)
LB73: sw $18, 292($16)
lui $17, 0x2704
ori $17, $17, 0x2c59
lui $18, 0x4a0
ori $18, $18, 0x66d4
ori $8, $0, 0
blez $8, LB74
LA74: sw $17, 296($0)
LB74: sw $18, 296($16)
lui $17, 0x29d8
ori $17, $17, 0x558a
lui $18, 0x6b5
ori $18, $18, 0x333b
ori $8, $0, 0x1
blez $8, LB75
LA75: sw $17, 300($0)
LB75: sw $18, 300($16)
lui $17, 0xe88
ori $17, $17, 0x8817
lui $18, 0x3ae0
ori $18, $18, 0x50cb
lui $8, 0xffff
ori $8, $8, 0xffff
blez $8, LB76
LA76: sw $17, 304($0)
LB76: sw $18, 304($16)
lui $17, 0x2a6a
ori $17, $17, 0xb9d3
lui $18, 0x1f85
ori $18, $18, 0x717c
ori $8, $0, 0xffff
blez $8, LB77
LA77: sw $17, 308($0)
LB77: sw $18, 308($16)
lui $17, 0x1fcb
ori $17, $17, 0xa5f5
lui $18, 0x2097
ori $18, $18, 0x6fc2
lui $8, 0xffff
ori $8, $8, 0xfffd
blez $8, LB78
LA78: sw $17, 312($0)
LB78: sw $18, 312($16)
lui $17, 0x2c0a
ori $17, $17, 0x6c08
lui $18, 0x26cc
ori $18, $18, 0xe4fb
lui $8, 0x7fff
ori $8, $8, 0xffff
blez $8, LB79
LA79: sw $17, 316($0)
LB79: sw $18, 316($16)
lui $17, 0x60
ori $17, $17, 0xd9da
lui $18, 0x670
ori $18, $18, 0xc2df
lui $8, 0x8000
ori $8, $8, 0
blez $8, LB80
LA80: sw $17, 320($0)
LB80: sw $18, 320($16)
lui $17, 0x1f74
ori $17, $17, 0xa0bf
lui $18, 0x1fcc
ori $18, $18, 0xf10d
ori $8, $0, 0x6e7e
blez $8, LB81
LA81: sw $17, 324($0)
LB81: sw $18, 324($16)
lui $17, 0x2360
ori $17, $17, 0xe6f3
lui $18, 0x3d29
ori $18, $18, 0xd66b
lui $8, 0xffff
ori $8, $8, 0x9b7a
blez $8, LB82
LA82: sw $17, 328($0)
LB82: sw $18, 328($16)
lui $17, 0xb4d
ori $17, $17, 0x194d
lui $18, 0x86c
ori $18, $18, 0xce4a
ori $8, $0, 0
bgtz $8, LB83
LA83: sw $17, 332($0)
LB83: sw $18, 332($16)
lui $17, 0x3ce8
ori $17, $17, 0x5484
lui $18, 0x1c8
ori $18, $18, 0x26a8
ori $8, $0, 0x1
bgtz $8, LB84
LA84: sw $17, 336($0)
LB84: sw $18, 336($16)
lui $17, 0x394
ori $17, $17, 0x4aa9
lui $18, 0x86c
ori $18, $18, 0xdb93
lui $8, 0xffff
ori $8, $8, 0xffff
bgtz $8, LB85
LA85: sw $17, 340($0)
LB85: sw $18, 340($16)
lui $17, 0x3750
ori $17, $17, 0x5dc5
lui $18, 0x2e2f
ori $18, $18, 0x10f0
ori $8, $0, 0xffff
bgtz $8, LB86
LA86: sw $17, 344($0)
LB86: sw $18, 344($16)
lui $17, 0xf0
ori $17, $17, 0x8e4f
lui $18, 0x2d4d
ori $18, $18, 0xf462
lui $8, 0xffff
ori $8, $8, 0xfffd
bgtz $8, LB87
LA87: sw $17, 348($0)
LB87: sw $18, 348($16)
lui $17, 0xdec
ori $17, $17, 0x6c98
lui $18, 0xacf
ori $18, $18, 0xba43
lui $8, 0x7fff
ori $8, $8, 0xffff
bgtz $8, LB88
LA88: sw $17, 352($0)
LB88: sw $18, 352($16)
lui $17, 0x15d2
ori $17, $17, 0x7d3d
lui $18, 0x1786
ori $18, $18, 0x258f
lui $8, 0x8000
ori $8, $8, 0
bgtz $8, LB89
LA89: sw $17, 356($0)
LB89: sw $18, 356($16)
lui $17, 0x33a3
ori $17, $17, 0x5c1e
lui $18, 0x271c
ori $18, $18, 0x17f2
ori $8, $0, 0x66b4
bgtz $8, LB90
LA90: sw $17, 360($0)
LB90: sw $18, 360($16)
lui $17, 0x944
ori $17, $17, 0xbe20
lui $18, 0x19c0
ori $18, $18, 0xecf7
lui $8, 0xffff
ori $8, $8, 0x8cba
bgtz $8, LB91
LA91: sw $17, 364($0)
LB91: sw $18, 364($16)
