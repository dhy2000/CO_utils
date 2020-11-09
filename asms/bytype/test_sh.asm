# Test Shift Instructions
# sll, srl, sra
# test(sll)
ori $9, $0, 0
sll $10, $9, 0
sw $10, 0($0)
ori $9, $0, 0
sll $10, $9, 1
sw $10, 4($0)
ori $9, $0, 0
sll $10, $9, 2
sw $10, 8($0)
ori $9, $0, 0
sll $10, $9, 5
sw $10, 12($0)
ori $9, $0, 0
sll $10, $9, 16
sw $10, 16($0)
ori $9, $0, 0
sll $10, $9, 31
sw $10, 20($0)
ori $9, $0, 0x1
sll $10, $9, 0
sw $10, 24($0)
ori $9, $0, 0x1
sll $10, $9, 1
sw $10, 28($0)
ori $9, $0, 0x1
sll $10, $9, 2
sw $10, 32($0)
ori $9, $0, 0x1
sll $10, $9, 5
sw $10, 36($0)
ori $9, $0, 0x1
sll $10, $9, 16
sw $10, 40($0)
ori $9, $0, 0x1
sll $10, $9, 31
sw $10, 44($0)
lui $9, 0xffff
ori $9, $9, 0xffff
sll $10, $9, 0
sw $10, 48($0)
lui $9, 0xffff
ori $9, $9, 0xffff
sll $10, $9, 1
sw $10, 52($0)
lui $9, 0xffff
ori $9, $9, 0xffff
sll $10, $9, 2
sw $10, 56($0)
lui $9, 0xffff
ori $9, $9, 0xffff
sll $10, $9, 5
sw $10, 60($0)
lui $9, 0xffff
ori $9, $9, 0xffff
sll $10, $9, 16
sw $10, 64($0)
lui $9, 0xffff
ori $9, $9, 0xffff
sll $10, $9, 31
sw $10, 68($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
sll $10, $9, 0
sw $10, 72($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
sll $10, $9, 1
sw $10, 76($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
sll $10, $9, 2
sw $10, 80($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
sll $10, $9, 5
sw $10, 84($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
sll $10, $9, 16
sw $10, 88($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
sll $10, $9, 31
sw $10, 92($0)
lui $9, 0x8000
ori $9, $9, 0
sll $10, $9, 0
sw $10, 96($0)
lui $9, 0x8000
ori $9, $9, 0
sll $10, $9, 1
sw $10, 100($0)
lui $9, 0x8000
ori $9, $9, 0
sll $10, $9, 2
sw $10, 104($0)
lui $9, 0x8000
ori $9, $9, 0
sll $10, $9, 5
sw $10, 108($0)
lui $9, 0x8000
ori $9, $9, 0
sll $10, $9, 16
sw $10, 112($0)
lui $9, 0x8000
ori $9, $9, 0
sll $10, $9, 31
sw $10, 116($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
sll $10, $9, 0
sw $10, 120($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
sll $10, $9, 1
sw $10, 124($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
sll $10, $9, 2
sw $10, 128($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
sll $10, $9, 5
sw $10, 132($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
sll $10, $9, 16
sw $10, 136($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
sll $10, $9, 31
sw $10, 140($0)
lui $9, 0x125
ori $9, $9, 0xe591
sll $10, $9, 0
sw $10, 144($0)
lui $9, 0x125
ori $9, $9, 0xe591
sll $10, $9, 1
sw $10, 148($0)
lui $9, 0x125
ori $9, $9, 0xe591
sll $10, $9, 2
sw $10, 152($0)
lui $9, 0x125
ori $9, $9, 0xe591
sll $10, $9, 5
sw $10, 156($0)
lui $9, 0x125
ori $9, $9, 0xe591
sll $10, $9, 16
sw $10, 160($0)
lui $9, 0x125
ori $9, $9, 0xe591
sll $10, $9, 31
sw $10, 164($0)
ori $9, $0, 0x645f
sll $10, $9, 6
sw $10, 168($0)
ori $9, $0, 0x697c
sll $10, $9, 6
sw $10, 172($0)
ori $9, $0, 0x2815
sll $10, $9, 16
sw $10, 176($0)
ori $9, $0, 0x3914
sll $10, $9, 26
sw $10, 180($0)
ori $9, $0, 0x2906
sll $10, $9, 31
sw $10, 184($0)
ori $9, $0, 0x17cd
sll $10, $9, 4
sw $10, 188($0)
ori $9, $0, 0x6b06
sll $10, $9, 31
sw $10, 192($0)
ori $9, $0, 0x504d
sll $10, $9, 2
sw $10, 196($0)
ori $9, $0, 0x7711
sll $10, $9, 12
sw $10, 200($0)
ori $9, $0, 0x6594
sll $10, $9, 6
sw $10, 204($0)
ori $9, $0, 0x2b40
sll $10, $9, 18
sw $10, 208($0)
ori $9, $0, 0x28c
sll $10, $9, 30
sw $10, 212($0)
ori $9, $0, 0x46f6
sll $10, $9, 19
sw $10, 216($0)
ori $9, $0, 0x7e1
sll $10, $9, 25
sw $10, 220($0)
ori $9, $0, 0x75a
sll $10, $9, 9
sw $10, 224($0)
ori $9, $0, 0x2c12
sll $10, $9, 6
sw $10, 228($0)
ori $9, $0, 0x680b
sll $10, $9, 13
sw $10, 232($0)
ori $9, $0, 0x61c9
sll $10, $9, 31
sw $10, 236($0)
# test(srl)
ori $9, $0, 0
srl $10, $9, 0
sw $10, 240($0)
ori $9, $0, 0
srl $10, $9, 1
sw $10, 244($0)
ori $9, $0, 0
srl $10, $9, 2
sw $10, 248($0)
ori $9, $0, 0
srl $10, $9, 5
sw $10, 252($0)
ori $9, $0, 0
srl $10, $9, 16
sw $10, 256($0)
ori $9, $0, 0
srl $10, $9, 31
sw $10, 260($0)
ori $9, $0, 0x1
srl $10, $9, 0
sw $10, 264($0)
ori $9, $0, 0x1
srl $10, $9, 1
sw $10, 268($0)
ori $9, $0, 0x1
srl $10, $9, 2
sw $10, 272($0)
ori $9, $0, 0x1
srl $10, $9, 5
sw $10, 276($0)
ori $9, $0, 0x1
srl $10, $9, 16
sw $10, 280($0)
ori $9, $0, 0x1
srl $10, $9, 31
sw $10, 284($0)
lui $9, 0xffff
ori $9, $9, 0xffff
srl $10, $9, 0
sw $10, 288($0)
lui $9, 0xffff
ori $9, $9, 0xffff
srl $10, $9, 1
sw $10, 292($0)
lui $9, 0xffff
ori $9, $9, 0xffff
srl $10, $9, 2
sw $10, 296($0)
lui $9, 0xffff
ori $9, $9, 0xffff
srl $10, $9, 5
sw $10, 300($0)
lui $9, 0xffff
ori $9, $9, 0xffff
srl $10, $9, 16
sw $10, 304($0)
lui $9, 0xffff
ori $9, $9, 0xffff
srl $10, $9, 31
sw $10, 308($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
srl $10, $9, 0
sw $10, 312($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
srl $10, $9, 1
sw $10, 316($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
srl $10, $9, 2
sw $10, 320($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
srl $10, $9, 5
sw $10, 324($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
srl $10, $9, 16
sw $10, 328($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
srl $10, $9, 31
sw $10, 332($0)
lui $9, 0x8000
ori $9, $9, 0
srl $10, $9, 0
sw $10, 336($0)
lui $9, 0x8000
ori $9, $9, 0
srl $10, $9, 1
sw $10, 340($0)
lui $9, 0x8000
ori $9, $9, 0
srl $10, $9, 2
sw $10, 344($0)
lui $9, 0x8000
ori $9, $9, 0
srl $10, $9, 5
sw $10, 348($0)
lui $9, 0x8000
ori $9, $9, 0
srl $10, $9, 16
sw $10, 352($0)
lui $9, 0x8000
ori $9, $9, 0
srl $10, $9, 31
sw $10, 356($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
srl $10, $9, 0
sw $10, 360($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
srl $10, $9, 1
sw $10, 364($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
srl $10, $9, 2
sw $10, 368($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
srl $10, $9, 5
sw $10, 372($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
srl $10, $9, 16
sw $10, 376($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
srl $10, $9, 31
sw $10, 380($0)
lui $9, 0x125
ori $9, $9, 0xe591
srl $10, $9, 0
sw $10, 384($0)
lui $9, 0x125
ori $9, $9, 0xe591
srl $10, $9, 1
sw $10, 388($0)
lui $9, 0x125
ori $9, $9, 0xe591
srl $10, $9, 2
sw $10, 392($0)
lui $9, 0x125
ori $9, $9, 0xe591
srl $10, $9, 5
sw $10, 396($0)
lui $9, 0x125
ori $9, $9, 0xe591
srl $10, $9, 16
sw $10, 400($0)
lui $9, 0x125
ori $9, $9, 0xe591
srl $10, $9, 31
sw $10, 404($0)
ori $9, $0, 0x5c0f
srl $10, $9, 23
sw $10, 408($0)
ori $9, $0, 0x7868
srl $10, $9, 7
sw $10, 412($0)
ori $9, $0, 0x130c
srl $10, $9, 7
sw $10, 416($0)
ori $9, $0, 0x2ae4
srl $10, $9, 15
sw $10, 420($0)
ori $9, $0, 0x1eba
srl $10, $9, 4
sw $10, 424($0)
ori $9, $0, 0x10d6
srl $10, $9, 31
sw $10, 428($0)
ori $9, $0, 0xc98
srl $10, $9, 3
sw $10, 432($0)
ori $9, $0, 0x25cf
srl $10, $9, 19
sw $10, 436($0)
ori $9, $0, 0x47de
srl $10, $9, 10
sw $10, 440($0)
ori $9, $0, 0x5aec
srl $10, $9, 3
sw $10, 444($0)
ori $9, $0, 0x57b3
srl $10, $9, 21
sw $10, 448($0)
ori $9, $0, 0x66ab
srl $10, $9, 8
sw $10, 452($0)
ori $9, $0, 0x4da1
srl $10, $9, 24
sw $10, 456($0)
ori $9, $0, 0x46fd
srl $10, $9, 28
sw $10, 460($0)
ori $9, $0, 0x7846
srl $10, $9, 6
sw $10, 464($0)
ori $9, $0, 0x299d
srl $10, $9, 2
sw $10, 468($0)
ori $9, $0, 0x2e4c
srl $10, $9, 18
sw $10, 472($0)
ori $9, $0, 0x2e9f
srl $10, $9, 6
sw $10, 476($0)
# test(sra)
ori $9, $0, 0
sra $10, $9, 0
sw $10, 480($0)
ori $9, $0, 0
sra $10, $9, 1
sw $10, 484($0)
ori $9, $0, 0
sra $10, $9, 2
sw $10, 488($0)
ori $9, $0, 0
sra $10, $9, 5
sw $10, 492($0)
ori $9, $0, 0
sra $10, $9, 16
sw $10, 496($0)
ori $9, $0, 0
sra $10, $9, 31
sw $10, 500($0)
ori $9, $0, 0x1
sra $10, $9, 0
sw $10, 504($0)
ori $9, $0, 0x1
sra $10, $9, 1
sw $10, 508($0)
ori $9, $0, 0x1
sra $10, $9, 2
sw $10, 512($0)
ori $9, $0, 0x1
sra $10, $9, 5
sw $10, 516($0)
ori $9, $0, 0x1
sra $10, $9, 16
sw $10, 520($0)
ori $9, $0, 0x1
sra $10, $9, 31
sw $10, 524($0)
lui $9, 0xffff
ori $9, $9, 0xffff
sra $10, $9, 0
sw $10, 528($0)
lui $9, 0xffff
ori $9, $9, 0xffff
sra $10, $9, 1
sw $10, 532($0)
lui $9, 0xffff
ori $9, $9, 0xffff
sra $10, $9, 2
sw $10, 536($0)
lui $9, 0xffff
ori $9, $9, 0xffff
sra $10, $9, 5
sw $10, 540($0)
lui $9, 0xffff
ori $9, $9, 0xffff
sra $10, $9, 16
sw $10, 544($0)
lui $9, 0xffff
ori $9, $9, 0xffff
sra $10, $9, 31
sw $10, 548($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
sra $10, $9, 0
sw $10, 552($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
sra $10, $9, 1
sw $10, 556($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
sra $10, $9, 2
sw $10, 560($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
sra $10, $9, 5
sw $10, 564($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
sra $10, $9, 16
sw $10, 568($0)
lui $9, 0x7fff
ori $9, $9, 0xffff
sra $10, $9, 31
sw $10, 572($0)
lui $9, 0x8000
ori $9, $9, 0
sra $10, $9, 0
sw $10, 576($0)
lui $9, 0x8000
ori $9, $9, 0
sra $10, $9, 1
sw $10, 580($0)
lui $9, 0x8000
ori $9, $9, 0
sra $10, $9, 2
sw $10, 584($0)
lui $9, 0x8000
ori $9, $9, 0
sra $10, $9, 5
sw $10, 588($0)
lui $9, 0x8000
ori $9, $9, 0
sra $10, $9, 16
sw $10, 592($0)
lui $9, 0x8000
ori $9, $9, 0
sra $10, $9, 31
sw $10, 596($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
sra $10, $9, 0
sw $10, 600($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
sra $10, $9, 1
sw $10, 604($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
sra $10, $9, 2
sw $10, 608($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
sra $10, $9, 5
sw $10, 612($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
sra $10, $9, 16
sw $10, 616($0)
lui $9, 0xc47f
ori $9, $9, 0xffff
sra $10, $9, 31
sw $10, 620($0)
lui $9, 0x125
ori $9, $9, 0xe591
sra $10, $9, 0
sw $10, 624($0)
lui $9, 0x125
ori $9, $9, 0xe591
sra $10, $9, 1
sw $10, 628($0)
lui $9, 0x125
ori $9, $9, 0xe591
sra $10, $9, 2
sw $10, 632($0)
lui $9, 0x125
ori $9, $9, 0xe591
sra $10, $9, 5
sw $10, 636($0)
lui $9, 0x125
ori $9, $9, 0xe591
sra $10, $9, 16
sw $10, 640($0)
lui $9, 0x125
ori $9, $9, 0xe591
sra $10, $9, 31
sw $10, 644($0)
ori $9, $0, 0x459b
sra $10, $9, 21
sw $10, 648($0)
ori $9, $0, 0x394c
sra $10, $9, 5
sw $10, 652($0)
ori $9, $0, 0xacc
sra $10, $9, 15
sw $10, 656($0)
ori $9, $0, 0x432d
sra $10, $9, 16
sw $10, 660($0)
ori $9, $0, 0x4ce1
sra $10, $9, 17
sw $10, 664($0)
ori $9, $0, 0x6566
sra $10, $9, 13
sw $10, 668($0)
ori $9, $0, 0x5134
sra $10, $9, 26
sw $10, 672($0)
ori $9, $0, 0xc46
sra $10, $9, 31
sw $10, 676($0)
ori $9, $0, 0x43ae
sra $10, $9, 0
sw $10, 680($0)
ori $9, $0, 0x91b
sra $10, $9, 7
sw $10, 684($0)
ori $9, $0, 0x7739
sra $10, $9, 17
sw $10, 688($0)
ori $9, $0, 0x764b
sra $10, $9, 10
sw $10, 692($0)
ori $9, $0, 0xa78
sra $10, $9, 27
sw $10, 696($0)
ori $9, $0, 0x21a0
sra $10, $9, 21
sw $10, 700($0)
ori $9, $0, 0x44b5
sra $10, $9, 9
sw $10, 704($0)
ori $9, $0, 0x70e4
sra $10, $9, 31
sw $10, 708($0)
ori $9, $0, 0x3f1b
sra $10, $9, 15
sw $10, 712($0)
ori $9, $0, 0x74ae
sra $10, $9, 14
sw $10, 716($0)
